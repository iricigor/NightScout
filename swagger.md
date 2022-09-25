# Nightscout API
Own your DData with the Nightscout API

## Version: 14.2.3

**License:** [AGPL 3](https://www.gnu.org/licenses/agpl.txt)

### /entries/{spec}

#### GET
##### Summary:

All Entries matching query

##### Description:

The Entries endpoint returns information about the
Nightscout entries.


##### Parameters

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| spec | path | entry id, such as `55cf81bc436037528ec75fa5` or a type filter such as `sgv`, `mbg`, etc.  | Yes | string |
| find | query | The query used to find entries, support nested query syntax, for example `find[dateString][$gte]=2015-08-27`.  All find parameters are interpreted as strings.  | No | string |
| count | query | Number of entries to return. | No | number |

##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | An array of entries |
| default | Entries |

### /slice/{storage}/{field}/{type}/{prefix}/{regex}

#### GET
##### Summary:

All Entries matching query

##### Description:

The Entries endpoint returns information about the Nightscout entries.

##### Parameters

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| storage | path | Prefix to use in constructing a prefix-based regex, default is `entries`. | Yes | string |
| field | path | Name of the field to use Regex against in query object, default is `dateString`. | Yes | string |
| type | path | The type field to search against, default is sgv. | Yes | string |
| prefix | path | Prefix to use in constructing a prefix-based regex. | Yes | string |
| regex | path | Tail part of regexp to use in expanding/construccting a query object. Regexp also has bash-style brace and glob expansion applied to it, creating ways to search for modal times of day, perhaps using something like this syntax: `T{15..17}:.*`, this would search for all records from 3pm to 5pm.  | Yes | string |
| find | query | The query used to find entries, support nested query syntax, for example `find[dateString][$gte]=2015-08-27`.  All find parameters are interpreted as strings.  | No | string |
| count | query | Number of entries to return. | No | number |

##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | An array of entries |
| default | Unexpected error |

### /echo/{storage}/{spec}

#### GET
##### Summary:

View generated Mongo Query object

##### Description:

Information about the mongo query object created by the query.


##### Parameters

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| storage | path | `entries`, or `treatments` to select the storage layer.  | Yes | string |
| spec | path | entry id, such as `55cf81bc436037528ec75fa5` or a type filter such as `sgv`, `mbg`, etc. This parameter is optional.  | Yes | string |
| find | query | The query used to find entries, support nested query syntax, for example `find[dateString][$gte]=2015-08-27`.  All find parameters are interpreted as strings.  | No | string |
| count | query | Number of entries to return. | No | number |

##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | An array of entries |

### /times/echo/{prefix}/{regex}

#### GET
##### Summary:

Echo the query object to be used.

##### Description:

Echo debug information about the query object constructed.

##### Parameters

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| prefix | path | Prefix to use in constructing a prefix-based regex. | Yes | string |
| regex | path | Tail part of regexp to use in expanding/construccting a query object. Regexp also has bash-style brace and glob expansion applied to it, creating ways to search for modal times of day, perhaps using something like this syntax: `T{15..17}:.*`, this would search for all records from 3pm to 5pm.  | Yes | string |
| find | query | The query used to find entries, support nested query syntax, for example `find[dateString][$gte]=2015-08-27`.  All find parameters are interpreted as strings. | No | string |
| count | query | Number of entries to return. | No | number |

##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | An array of entries |
| default | Unexpected error |

### /times/{prefix}/{regex}

#### GET
##### Summary:

All Entries matching query

##### Description:

The Entries endpoint returns information about the Nightscout entries.

##### Parameters

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| prefix | path | Prefix to use in constructing a prefix-based regex. | Yes | string |
| regex | path | Tail part of regexp to use in expanding/construccting a query object. Regexp also has bash-style brace and glob expansion applied to it, creating ways to search for modal times of day, perhaps using something like this syntax: `T{15..17}:.*`, this would search for all records from 3pm to 5pm.  | Yes | string |
| find | query | The query used to find entries, support nested query syntax, for example `find[dateString][$gte]=2015-08-27`.  All find parameters are interpreted as strings. | No | string |
| count | query | Number of entries to return. | No | number |

##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | An array of entries |
| default | Unexpected error |

### /entries

#### GET
##### Summary:

All Entries matching query

##### Description:

The Entries endpoint returns information about the Nightscout entries.

##### Parameters

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| find | query | The query used to find entries, support nested query syntax, for example `find[dateString][$gte]=2015-08-27`.  All find parameters are interpreted as strings. | No | string |
| count | query | Number of entries to return. | No | number |

##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | An array of entries |
| default | Unexpected error |

#### POST
##### Summary:

Add new entries.

##### Description:



##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | Rejected list of entries.  Empty list is success. |
| 405 | Invalid input |

#### DELETE
##### Summary:

Delete entries matching query.

##### Description:

Remove entries, same search syntax as GET.

##### Parameters

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| find | query | The query used to find entries, support nested query syntax, for example `find[dateString][$gte]=2015-08-27`.  All find parameters are interpreted as strings. | No | string |
| count | query | Number of entries to return. | No | number |

##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | Empty list is success. |

### /treatments

#### GET
##### Summary:

Treatments

##### Description:

The Treatments endpoint returns information about the Nightscout treatments.

##### Parameters

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| find | query | The query used to find entries, supports nested query syntax.  Examples `find[insulin][$gte]=3` `find[carb][$gte]=100` `find[eventType]=Correction+Bolus` All find parameters are interpreted as strings. | No | string |
| count | query | Number of entries to return. | No | number |

##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | An array of treatments |
| default | Unexpected error |

#### POST
##### Summary:

Add new treatments.

##### Description:



##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | Rejected list of treatments.  Empty list is success. |
| 405 | Invalid input |

#### DELETE
##### Summary:

Delete treatments matching query.

##### Description:

Remove treatments, same search syntax as GET.

##### Parameters

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| find | query | The query used to find treatments to delete, support nested query syntax, for example `find[insulin][$gte]=3`. All find parameters are interpreted as strings. | No | string |
| count | query | Number of entries to return. | No | number |

##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | Empty list is success. |

### /treatments/{spec}

#### DELETE
##### Summary:

Delete treatments record with id provided in spec

##### Description:

The Treatments endpoint returns information about the
Nightscout devicestatus records.


##### Parameters

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| spec | path | treatment id, such as `55cf81bc436037528ec75fa5`  | Yes | string |

##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | A status record of the delete. |
| default | Unexpected error |

### /profile

#### GET
##### Summary:

Profile

##### Description:

The Profile endpoint returns information about the Nightscout Treatment Profiles.

##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | An array of treatments |
| default | Unexpected error |

### /status

#### GET
##### Summary:

Status

##### Description:

Server side status, default settings and capabilities.

##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | Server capabilities and status. |
| default | Unexpected error |

### /devicestatus/

#### GET
##### Summary:

All Devicestatuses matching query

##### Description:

The Devicestatus endpoint returns information about the Nightscout devicestatus records.

##### Parameters

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| find | query | The query used to find entries, support nested query syntax, for example `find[dateString][$gte]=2015-08-27`.  All find parameters are interpreted as strings. | No | string |
| count | query | Number of devicestatus records to return. | No | number |

##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | An array of devicestatus entries |
| default | Unexpected error |

#### POST
##### Summary:

Add new devicestatus records.

##### Description:



##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | Rejected list of device statuses.  Empty list is success. |
| 405 | Invalid input |

#### DELETE
##### Summary:

Delete all Devicestatus records matching query

##### Description:

The Devicestatus endpoint returns information about the
Nightscout devicestatus records.


##### Parameters

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| find | query | The query used to find entries, support nested query syntax, for example `find[created_at][$gte]=2015-08-27`.  All find parameters are interpreted as strings.  | No | string |

##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | A status record of the delete. |
| default | Unexpected error |

### /devicestatus/{spec}

#### DELETE
##### Summary:

Delete devicestatus record with id provided in spec

##### Description:

The Devicestatus endpoint returns information about the
Nightscout devicestatus records.


##### Parameters

| Name | Located in | Description | Required | Schema |
| ---- | ---------- | ----------- | -------- | ---- |
| spec | path | entry id, such as `55cf81bc436037528ec75fa5`  | Yes | string |

##### Responses

| Code | Description |
| ---- | ----------- |
| 200 | A status record of the delete. |
| default | Unexpected error |
