@Deduplicate
Feature: Deduplicate - Verification of Deduplicate pipeline with File as source and File as sink

  @FILE_SOURCE_TEST @FILE_SINK_TEST
  Scenario: To verify complete flow of data extract and transfer from File source to File sink using Deduplicate Plugin with Max filter option
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "File" from the plugins list as: "Source"
    When Expand Plugin group in the LHS plugins list: "Analytics"
    When Select plugin: "Deduplicate" from the plugins list as: "Analytics"
    Then Connect plugins: "File" and "Deduplicate" to establish connection
    When Expand Plugin group in the LHS plugins list: "Sink"
    When Select plugin: "File" from the plugins list as: "Sink"
    Then Connect plugins: "Deduplicate" and "File2" to establish connection
    Then Navigate to the properties page of plugin: "File"
    Then Enter input plugin property: "referenceName" with value: "FileReferenceName"
    Then Enter input plugin property: "path" with value: "deduplicateFileCsvFile"
    Then Select dropdown plugin property: "format" with option value: "csv"
    Then Click plugin property: "skipHeader"
    Then Click on the Get Schema button
    Then Verify the Output Schema matches the Expected Schema: "deduplicateOutputSchema"
    Then Validate "File" plugin properties
    Then Close the Plugin Properties page
    Then Navigate to the properties page of plugin: "Deduplicate"
    Then Enter Deduplicate plugin property: filterOperation field name with value: "deduplicateFilterFieldName"
    Then Select Deduplicate plugin property: filterOperation field function with value: "deduplicateFilterFunctionMax"
    Then Select dropdown plugin property: "uniqueFields" with option value: "fname"
    Then Press ESC key to close the unique fields dropdown
    Then Select dropdown plugin property: "uniqueFields" with option value: "lname"
    Then Press ESC key to close the unique fields dropdown
    Then Enter input plugin property: "deduplicateNumPartitions" with value: "deduplicateNumberOfPartitions"
    Then Validate "Deduplicate" plugin properties
    Then Close the Plugin Properties page
    Then Navigate to the properties page of plugin: "File2"
    Then Enter input plugin property: "referenceName" with value: "FileReferenceName"
    Then Enter input plugin property: "path" with value: "filePluginOutputFolder"
    Then Replace input plugin property: "pathSuffix" with value: "yyyy-MM-dd-HH-mm-ss"
    Then Select dropdown plugin property: "format" with option value: "csv"
    Then Validate "File" plugin properties
    Then Close the Plugin Properties page
    Then Save the pipeline
    Then Preview and run the pipeline
    Then Wait till pipeline preview is in running state
    Then Open and capture pipeline preview logs
    Then Verify the preview run status of pipeline in the logs is "succeeded"
    Then Close the pipeline logs
    Then Close the preview
    Then Deploy the pipeline
    Then Run the Pipeline in Runtime
    Then Wait till pipeline is in running state
    Then Open and capture logs
    Then Verify the pipeline status is "Succeeded"
    Then Close the pipeline logs
    Then Validate OUT record count of deduplicate is equal to IN record count of sink
    Then Validate output records in output folder path "filePluginOutputFolder" is equal to expected output file "deduplicateTest1OutputFile"

  @FILE_SOURCE_TEST @FILE_SINK_TEST
  Scenario: To verify complete flow of data extract and transfer from File source to File sink using Deduplicate Plugin with Min filter option
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "File" from the plugins list as: "Source"
    When Expand Plugin group in the LHS plugins list: "Analytics"
    When Select plugin: "Deduplicate" from the plugins list as: "Analytics"
    Then Connect plugins: "File" and "Deduplicate" to establish connection
    When Expand Plugin group in the LHS plugins list: "Sink"
    When Select plugin: "File" from the plugins list as: "Sink"
    Then Connect plugins: "Deduplicate" and "File2" to establish connection
    Then Navigate to the properties page of plugin: "File"
    Then Enter input plugin property: "referenceName" with value: "FileReferenceName"
    Then Enter input plugin property: "path" with value: "deduplicateFileCsvFile"
    Then Select dropdown plugin property: "format" with option value: "csv"
    Then Click plugin property: "skipHeader"
    Then Click on the Get Schema button
    Then Verify the Output Schema matches the Expected Schema: "deduplicateOutputSchema"
    Then Validate "File" plugin properties
    Then Close the Plugin Properties page
    Then Navigate to the properties page of plugin: "Deduplicate"
    Then Enter Deduplicate plugin property: filterOperation field name with value: "deduplicateFilterFieldName"
    Then Select Deduplicate plugin property: filterOperation field function with value: "deduplicateFilterFunctionMin"
    Then Select dropdown plugin property: "uniqueFields" with option value: "fname"
    Then Press ESC key to close the unique fields dropdown
    Then Select dropdown plugin property: "uniqueFields" with option value: "lname"
    Then Press ESC key to close the unique fields dropdown
    Then Enter input plugin property: "deduplicateNumPartitions" with value: "deduplicateNumberOfPartitions"
    Then Validate "Deduplicate" plugin properties
    Then Close the Plugin Properties page
    Then Navigate to the properties page of plugin: "File2"
    Then Enter input plugin property: "referenceName" with value: "FileReferenceName"
    Then Enter input plugin property: "path" with value: "filePluginOutputFolder"
    Then Replace input plugin property: "pathSuffix" with value: "yyyy-MM-dd-HH-mm-ss"
    Then Select dropdown plugin property: "format" with option value: "tsv"
    Then Validate "File" plugin properties
    Then Close the Plugin Properties page
    Then Save the pipeline
    Then Preview and run the pipeline
    Then Wait till pipeline preview is in running state
    Then Open and capture pipeline preview logs
    Then Verify the preview run status of pipeline in the logs is "succeeded"
    Then Close the pipeline logs
    Then Close the preview
    Then Deploy the pipeline
    Then Run the Pipeline in Runtime
    Then Wait till pipeline is in running state
    Then Open and capture logs
    Then Verify the pipeline status is "Succeeded"
    Then Close the pipeline logs
    Then Validate OUT record count of deduplicate is equal to IN record count of sink
    Then Validate output records in output folder path "filePluginOutputFolder" is equal to expected output file "deduplicateTest2OutputFile"

  @FILE_SOURCE_TEST @FILE_SINK_TEST
  Scenario: To verify complete flow of data extract and transfer from File source to File sink using Deduplicate Plugin with Any filter option
    Given Open Datafusion Project to configure pipeline
    When Select plugin: "File" from the plugins list as: "Source"
    When Expand Plugin group in the LHS plugins list: "Analytics"
    When Select plugin: "Deduplicate" from the plugins list as: "Analytics"
    Then Connect plugins: "File" and "Deduplicate" to establish connection
    When Expand Plugin group in the LHS plugins list: "Sink"
    When Select plugin: "File" from the plugins list as: "Sink"
    Then Connect plugins: "Deduplicate" and "File2" to establish connection
    Then Navigate to the properties page of plugin: "File"
    Then Enter input plugin property: "referenceName" with value: "FileReferenceName"
    Then Enter input plugin property: "path" with value: "deduplicateFileCsvFile"
    Then Select dropdown plugin property: "format" with option value: "csv"
    Then Click plugin property: "skipHeader"
    Then Click on the Get Schema button
    Then Verify the Output Schema matches the Expected Schema: "deduplicateOutputSchema"
    Then Validate "File" plugin properties
    Then Close the Plugin Properties page
    Then Navigate to the properties page of plugin: "Deduplicate"
    Then Enter Deduplicate plugin property: filterOperation field name with value: "deduplicateFilterFieldName"
    Then Select Deduplicate plugin property: filterOperation field function with value: "deduplicateFilterFunctionAny"
    Then Select dropdown plugin property: "uniqueFields" with option value: "fname"
    Then Press ESC key to close the unique fields dropdown
    Then Select dropdown plugin property: "uniqueFields" with option value: "lname"
    Then Press ESC key to close the unique fields dropdown
    Then Enter input plugin property: "deduplicateNumPartitions" with value: "deduplicateNumberOfPartitions"
    Then Validate "Deduplicate" plugin properties
    Then Close the Plugin Properties page
    Then Navigate to the properties page of plugin: "File2"
    Then Enter input plugin property: "referenceName" with value: "FileReferenceName"
    Then Enter input plugin property: "path" with value: "filePluginOutputFolder"
    Then Replace input plugin property: "pathSuffix" with value: "yyyy-MM-dd-HH-mm-ss"
    Then Select dropdown plugin property: "format" with option value: "tsv"
    Then Validate "File" plugin properties
    Then Close the Plugin Properties page
    Then Save the pipeline
    Then Preview and run the pipeline
    Then Wait till pipeline preview is in running state
    Then Open and capture pipeline preview logs
    Then Verify the preview run status of pipeline in the logs is "succeeded"
    Then Close the pipeline logs
    Then Close the preview
    Then Deploy the pipeline
    Then Run the Pipeline in Runtime
    Then Wait till pipeline is in running state
    Then Open and capture logs
    Then Verify the pipeline status is "Succeeded"
    Then Close the pipeline logs
    Then Validate OUT record count of deduplicate is equal to IN record count of sink
    Then Validate output records in output folder path "filePluginOutputFolder" is equal to expected output file "deduplicateTest3OutputFile"
