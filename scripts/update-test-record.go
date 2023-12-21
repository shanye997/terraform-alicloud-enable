package main

import (
	"fmt"
	"io"
	"log"
	"net/http"
	"os"
	"strings"
	"time"
)

func main() {
	if len(os.Args) != 3 {
		log.Println("Usage: update-test-record.go <result>")
		return
	}
	ossObjectPath := strings.TrimSpace(os.Args[1])
	result := strings.TrimSpace(os.Args[2])

	urlPrefix := "https://terraform-fc-test-for-example-module.oss-ap-southeast-1.aliyuncs.com"
	tfVersionFileName := "terraform.version.log"
	tfVersionUrl := urlPrefix + "/" + ossObjectPath + "/" + tfVersionFileName
	tfVersionResponse, err := http.Get(tfVersionUrl)
	if err != nil {
		log.Println("[ERROR] failed to get terraform version from oss")
		return
	}
	defer tfVersionResponse.Body.Close()
	tfVersion, _ := io.ReadAll(tfVersionResponse.Body)

	currentTestRecord := "## "
	currentTime := time.Now().Format("02 Jan 2006 15:04 UTC")
	currentTestRecord += currentTime + "\n\n"
	if result == "0" {
		currentTestRecord += "success: true\n\n"
	} else {
		currentTestRecord += "success: false\n\n"
	}
	currentTestRecord += "## Versions\n\n"
	currentTestRecord += string(tfVersion) + "\n\n\n"

	testRecordFileName := "TestRecord.md"
	var testRecordFile *os.File
	oldTestRecord := ""
	if _, err := os.Stat(testRecordFileName); os.IsNotExist(err) {
		testRecordFile, err = os.Create(testRecordFileName)
		if err != nil {
			log.Println("[ERROR] failed to create test record file")
		}
	} else {
		data, err := os.ReadFile(testRecordFileName)
		if err != nil {
			log.Println("[ERROR] failed to read test record file")
			return
		}
		oldTestRecord = string(data)

		testRecordFile, err = os.OpenFile(testRecordFileName, os.O_TRUNC|os.O_RDWR, 0666)
		if err != nil {
			log.Println("[ERROR] failed to open test record file")
		}
	}
	defer testRecordFile.Close()

	fmt.Println()

	currentTestRecord += oldTestRecord
	testRecordFile.WriteString(currentTestRecord)
}
