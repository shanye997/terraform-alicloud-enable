package main

import (
	"io"
	"log"
	"net/http"
	"os"
	"strings"
)

func main() {
	if len(os.Args) != 3 {
		log.Println("Usage: update-test-record.go <result>")
		return
	}
	ossObjectPath := strings.TrimSpace(os.Args[1])

	urlPrefix := "https://terraform-fc-test-for-example-module.oss-ap-southeast-1.aliyuncs.com"
	currentTestRecordFileName := "TestRecord.md"
	currentTestRecordFileUrl := urlPrefix + "/" + ossObjectPath + "/" + currentTestRecordFileName
	response, err := http.Get(currentTestRecordFileUrl)
	if err != nil {
		log.Println("[ERROR] failed to get test record from oss")
		return
	}
	defer response.Body.Close()
	data, _ := io.ReadAll(response.Body)
	currentTestRecord := string(data)

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

	currentTestRecord += oldTestRecord
	testRecordFile.WriteString(currentTestRecord)
}
