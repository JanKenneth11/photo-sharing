name := """simple photo sharing"""
organization := "com.example"

version := "1.0-SNAPSHOT"

lazy val root = (project in file(".")).enablePlugins(PlayScala)

scalaVersion := "2.13.10"

libraryDependencies ++= Seq(
    "com.typesafe.slick"      %% "slick"                 % "3.3.2",
    "com.typesafe.slick"      %% "slick-hikaricp"        % "3.3.2",
    "com.typesafe.play"       %% "play-slick"            % "5.0.0",
    "com.typesafe.play"       %% "play-slick-evolutions" % "5.0.0",
    "ch.qos.logback"          % "logback-classic"        % "1.0.9",
    "org.xerial"              %  "sqlite-jdbc"           % "3.34.0",
    guice,
    "org.scalatestplus.play" %% "scalatestplus-play" % "5.0.0" % Test
)


// Adds additional packages into Twirl
//TwirlKeys.templateImports += "com.example.controllers._"

// Adds additional packages into conf/routes
// play.sbt.routes.RoutesKeys.routesImport += "com.example.binders._"
