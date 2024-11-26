## ----setup--------------------------------------------------------------------
library(PurpleAirAPI)

## ---- eval=FALSE--------------------------------------------------------------
#  # Replace with your API key
#  api_key <- "YOUR_API_KEY"

## ---- eval=FALSE--------------------------------------------------------------
#  # Get sensor locations
#  sensors <- getPurpleairSensors(
#    apiReadKey = api_key,
#    fields = c("latitude", "longitude", "date_created", "last_seen", "location_type")
#  )

## ---- include=FALSE-----------------------------------------------------------
# Example output structure (not real data):
sensors <- data.frame(
  sensor_index = c(1234, 5678),
  latitude = c(37.7749, 34.0522),
  longitude = c(-122.4194, -118.2437),
  date_created = as.Date(c("2020-01-01", "2020-02-01")),
  last_seen = as.Date(c("2024-01-01", "2024-01-01")),
  location_type = c(0, 1),
  stringsAsFactors = FALSE
)

## ---- eval=TRUE---------------------------------------------------------------
print(sensors)

## ---- eval=FALSE--------------------------------------------------------------
#  # Download one week of hourly data
#  history <- getSensorHistory(
#    sensorIndex = c(1234, 5678),  # Example sensor IDs
#    apiReadKey = api_key,
#    startDate = "2024-01-01",
#    endDate = "2024-01-07",
#    average = 60,  # hourly averages
#    fields = c("pm2.5_alt", "temperature", "humidity")
#  )

## ---- include=FALSE-----------------------------------------------------------
# Example output structure (not real data):
history <- data.frame(
  time_stamp = c("2024-01-01 00:00:00", "2024-01-01 01:00:00"),
  humidity = c(68.2, 69.0),
  temperature = c(50.4, 48.6),
  pm2.5_alt = c(3.4, 2.0),
  sensor_index = c(1234, 1234),
  stringsAsFactors = FALSE
)

## ---- eval=TRUE---------------------------------------------------------------
print(history)

