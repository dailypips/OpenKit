#-------------------------------------------------
#
# Project created by QtCreator 2015-03-09T01:57:08
#
#-------------------------------------------------

QT       += network sql xml testlib widgets

CONFIG   += c++11
INCLUDEPATH = include /usr/local/Cellar/boost/1.57.0/include 3rd
TARGET = QuantKit
TEMPLATE = lib

DEFINES += QUANTKIT_LIBRARY

SOURCES +=\
    src/Event/Ask.cpp \
    src/Event/Bid.cpp \
    src/Event/OnConnect.cpp \
    src/Event/OnDisconnect.cpp \
    src/Event/Tick.cpp \
    src/Event/Trade.cpp \
    src/Event.cpp \
    test/test_event.cpp \
    src/Account.cpp \
    src/AccountDataEntry.cpp \
    src/AccountDataFieldList.cpp \
    src/AccountDataManager.cpp \
    src/AccountDataSnapshot.cpp \
    src/AccountPosition.cpp \
    src/AccountTransaction.cpp \
    src/AltId.cpp \
    src/BarFactory.cpp \
    src/BarFactoryItem.cpp \
    src/BarFilter.cpp \
    src/BarFilterItem.cpp \
    src/BarSeries.cpp \
    src/BarSliceFactory.cpp \
    src/Clock.cpp \
    src/CommissionProvider.cpp \
    src/Configuration.cpp \
    src/ConsoleEventLogger.cpp \
    src/CurrencyConverter.cpp \
    src/CurrencyId.cpp \
    src/DataFile.cpp \
    src/DataFileManager.cpp \
    src/DataFileServer.cpp \
    src/DataFileServerClient_.cpp \
    src/DataFileServerClient.cpp \
    src/DataFilter.cpp \
    src/DataImport.cpp \
    src/DataManager.cpp \
    src/DataObject.cpp \
    src/DataProcessor.cpp \
    src/DataSeries.cpp \
    src/DataSeriesEventLogger.cpp \
    src/DataSeriesIterator.cpp \
    src/DataSeriesNameHelper.cpp \
    src/DataServer.cpp \
    src/DataSimulator.cpp \
    src/EventBus.cpp \
    src/EventDispatcher.cpp \
    src/EventFilter.cpp \
    src/EventLogger.cpp \
    src/EventLoggerManager.cpp \
    src/EventManager.cpp \
    src/EventPipe.cpp \
    src/EventQueue.cpp \
    src/EventQueueId.cpp \
    src/EventQueuePriority.cpp \
    src/EventQueueType.cpp \
    src/EventServer.cpp \
    src/EventSortedSet.cpp \
    src/ExecutionMessage.cpp \
    src/ExecutionSimulator.cpp \
    src/Field.cpp \
    src/FieldList.cpp \
    src/FileDataServer.cpp \
    src/FileInstrumentServer.cpp \
    src/FileManager.cpp \
    src/FillSeries.cpp \
    src/Framework.cpp \
    src/FrameworkServer.cpp \
    src/FundamentalData.cpp \
    src/Global.cpp \
    src/GroupDispatcher.cpp \
    src/GroupField.cpp \
    src/GroupManager.cpp \
    src/HistoricalDataRequest.cpp \
    src/Indicator.cpp \
    src/Installation.cpp \
    src/Instrument.cpp \
    src/InstrumentDefinition.cpp \
    src/InstrumentDefinitionEnd.cpp \
    src/InstrumentDefinitionRequest.cpp \
    src/InstrumentList.cpp \
    src/InstrumentManager.cpp \
    src/InstrumentServer.cpp \
    src/InstrumentStrategy.cpp \
    src/Leg.cpp \
    src/LicenseInfo.cpp \
    src/LicenseManager.cpp \
    src/LongTradeCountReportItem.cpp \
    src/MatchingEngine.cpp \
    src/MemorySeries.cpp \
    src/MetaStrategy.cpp \
    src/NetDataFile_.cpp \
    src/NetDataFile.cpp \
    src/NetDataSeries.cpp \
    src/NewsUrgency.cpp \
    src/ObjectKey.cpp \
    src/ObjectStreamer.cpp \
    src/ObjectTable.cpp \
    src/ObjectType.cpp \
    src/OrderBook.cpp \
    src/OrderFactory.cpp \
    src/OrderManager.cpp \
    src/OrderServer.cpp \
    src/Parameter.cpp \
    src/ParameterAttribute.cpp \
    src/PerformanceProvider.cpp \
    src/PerformanceScenario.cpp \
    src/PerformanceStrategy.cpp \
    src/Portfolio.cpp \
    src/PortfolioList.cpp \
    src/PortfolioManager.cpp \
    src/PortfolioPerformance.cpp \
    src/PortfolioStatistics.cpp \
    src/PortfolioStatisticsCategory.cpp \
    src/PortfolioStatisticsItem.cpp \
    src/PortfolioStatisticsItemList.cpp \
    src/PortfolioStatisticsType.cpp \
    src/Position.cpp \
    src/Pricer.cpp \
    src/Provider.cpp \
    src/ProviderId.cpp \
    src/ProviderList.cpp \
    src/ProviderManager.cpp \
    src/ProviderPlugin.cpp \
    src/ProviderPropertyList.cpp \
    src/QuickLZ.cpp \
    src/QuoteSeries.cpp \
    src/RangeBarFactoryItem.cpp \
    src/ReminderCallback.cpp \
    src/Report.cpp \
    src/ReportItem.cpp \
    src/ReportManager.cpp \
    src/Scenario.cpp \
    src/SellSideInstrumentStrategy.cpp \
    src/SellSideStrategy.cpp \
    src/ServerConfiguration.cpp \
    src/SessionBarFactoryItem.cpp \
    src/ShortTradeCountReportItem.cpp \
    src/SlippageProvider.cpp \
    src/SortedEventQueue.cpp \
    src/StatisticsManager.cpp \
    src/Stop.cpp \
    src/Strategy.cpp \
    src/StrategyList.cpp \
    src/StrategyManager.cpp \
    src/StrategyMethodAttribute.cpp \
    src/StreamerManager.cpp \
    src/StreamerPlugin.cpp \
    src/SubscriptionManager.cpp \
    src/Tick.cpp \
    src/TickBarFactoryItem.cpp \
    src/TickSeries.cpp \
    src/TimeBarFactoryItem.cpp \
    src/TimeSeries.cpp \
    src/TradeCountReportItem.cpp \
    src/TradeDetector.cpp \
    src/TradeInfo.cpp \
    src/Transaction.cpp \
    src/VolumeBarFactoryItem.cpp

HEADERS +=\
    include/QuantKit/Event/Ask.h \
    include/QuantKit/Event/Bid.h \
    include/QuantKit/EventType.h \
    include/QuantKit/Event/OnConnect.h \
    include/QuantKit/Event/OnDisconnect.h \
    include/QuantKit/Event/Tick.h \
    include/QuantKit/Event/Tick_p.h \
    include/QuantKit/Event/Trade.h \
    include/QuantKit/Event.h \
    include/QuantKit/Event_p.h \
    include/QuantKit/IProvider.h \
    include/QuantKit/quantkit_global.h \
    include/QuantKit/Account.h \
    include/QuantKit/AccountDataEntry.h \
    include/QuantKit/AccountDataField.h \
    include/QuantKit/AccountDataFieldList.h \
    include/QuantKit/AccountDataManager.h \
    include/QuantKit/AccountDataSnapshot.h \
    include/QuantKit/AccountDataType.h \
    include/QuantKit/AccountPosition.h \
    include/QuantKit/AccountTransaction.h \
    include/QuantKit/AltId.h \
    include/QuantKit/BarData.h \
    include/QuantKit/BarFactory.h \
    include/QuantKit/BarFactoryItem.h \
    include/QuantKit/BarFilter.h \
    include/QuantKit/BarFilterItem.h \
    include/QuantKit/BarInput.h \
    include/QuantKit/BarSeries.h \
    include/QuantKit/BarSliceFactory.h \
    include/QuantKit/BarStatus.h \
    include/QuantKit/BarType.h \
    include/QuantKit/ChartStyle.h \
    include/QuantKit/Clock.h \
    include/QuantKit/ClockMode.h \
    include/QuantKit/ClockResolution.h \
    include/QuantKit/ClockType.h \
    include/QuantKit/CommissionProvider.h \
    include/QuantKit/CommissionType.h \
    include/QuantKit/Configuration.h \
    include/QuantKit/ConsoleEventLogger.h \
    include/QuantKit/Cross.h \
    include/QuantKit/CurrencyConverter.h \
    include/QuantKit/CurrencyId.h \
    include/QuantKit/DataFile.h \
    include/QuantKit/DataFileManager.h \
    include/QuantKit/DataFileServer.h \
    include/QuantKit/DataFileServerClient_.h \
    include/QuantKit/DataFileServerClient.h \
    include/QuantKit/DataFilter.h \
    include/QuantKit/DataImport.h \
    include/QuantKit/DataManager.h \
    include/QuantKit/DataObject.h \
    include/QuantKit/DataProcessor.h \
    include/QuantKit/DataSeries.h \
    include/QuantKit/DataSeriesEventLogger.h \
    include/QuantKit/DataSeriesIterator.h \
    include/QuantKit/DataSeriesNameHelper.h \
    include/QuantKit/DataServer.h \
    include/QuantKit/DataSimulator.h \
    include/QuantKit/EventBus.h \
    include/QuantKit/EventBusIdleMode.h \
    include/QuantKit/EventBusMode.h \
    include/QuantKit/EventDispatcher.h \
    include/QuantKit/EventFilter.h \
    include/QuantKit/EventLogger.h \
    include/QuantKit/EventLoggerManager.h \
    include/QuantKit/EventManager.h \
    include/QuantKit/EventManagerStatus.h \
    include/QuantKit/EventPipe.h \
    include/QuantKit/EventQueue.h \
    include/QuantKit/EventQueueId.h \
    include/QuantKit/EventQueuePriority.h \
    include/QuantKit/EventQueueType.h \
    include/QuantKit/EventServer.h \
    include/QuantKit/EventSortedSet.h \
    include/QuantKit/EWidthStyle.h \
    include/QuantKit/ExecType.h \
    include/QuantKit/ExecutionCommandType.h \
    include/QuantKit/ExecutionMessage.h \
    include/QuantKit/ExecutionSimulator.h \
    include/QuantKit/Field.h \
    include/QuantKit/FieldList.h \
    include/QuantKit/FileDataServer.h \
    include/QuantKit/FileInstrumentServer.h \
    include/QuantKit/FileManager.h \
    include/QuantKit/FillSeries.h \
    include/QuantKit/Framework.h \
    include/QuantKit/FrameworkMode.h \
    include/QuantKit/FrameworkServer.h \
    include/QuantKit/FundamentalData.h \
    include/QuantKit/Global.h \
    include/QuantKit/GroupDispatcher.h \
    include/QuantKit/GroupField.h \
    include/QuantKit/GroupManager.h \
    include/QuantKit/GroupUpdateType.h \
    include/QuantKit/HistoricalDataRequest.h \
    include/QuantKit/ICommissionProvider.h \
    include/QuantKit/ICurrencyConverter.h \
    include/QuantKit/IDataProvider.h \
    include/QuantKit/IDataSeries.h \
    include/QuantKit/IDataSimulator.h \
    include/QuantKit/IEventQueue.h \
    include/QuantKit/IExecutionProvider.h \
    include/QuantKit/IExecutionSimulator.h \
    include/QuantKit/IGroupListener.h \
    include/QuantKit/IHistoricalDataProvider.h \
    include/QuantKit/IInstrumentProvider.h \
    include/QuantKit/IndexOption.h \
    include/QuantKit/Indicator.h \
    include/QuantKit/INewsProvider.h \
    include/QuantKit/Installation.h \
    include/QuantKit/Instrument.h \
    include/QuantKit/InstrumentDefinition.h \
    include/QuantKit/InstrumentDefinitionEnd.h \
    include/QuantKit/InstrumentDefinitionRequest.h \
    include/QuantKit/InstrumentList.h \
    include/QuantKit/InstrumentManager.h \
    include/QuantKit/InstrumentServer.h \
    include/QuantKit/InstrumentStrategy.h \
    include/QuantKit/InstrumentType.h \
    include/QuantKit/ISeries.h \
    include/QuantKit/ISlippageProvider.h \
    include/QuantKit/Leg.h \
    include/QuantKit/Level2Side.h \
    include/QuantKit/LongTradeCountReportItem.h \
    include/QuantKit/MatchingEngine.h \
    include/QuantKit/MemorySeries.h \
    include/QuantKit/MetaStrategy.h \
    include/QuantKit/NetDataFile_.h \
    include/QuantKit/NetDataFile.h \
    include/QuantKit/NetDataSeries.h \
    include/QuantKit/NewsUrgency.h \
    include/QuantKit/ObjectKey.h \
    include/QuantKit/ObjectStreamer.h \
    include/QuantKit/ObjectTable.h \
    include/QuantKit/ObjectType.h \
    include/QuantKit/OrderBook.h \
    include/QuantKit/OrderFactory.h \
    include/QuantKit/OrderManager.h \
    include/QuantKit/OrderServer.h \
    include/QuantKit/OrderSide.h \
    include/QuantKit/OrderStatus.h \
    include/QuantKit/OrderType.h \
    include/QuantKit/Parameter.h \
    include/QuantKit/ParameterAttribute.h \
    include/QuantKit/PerformanceProvider.h \
    include/QuantKit/PerformanceScenario.h \
    include/QuantKit/PerformanceStrategy.h \
    include/QuantKit/Portfolio.h \
    include/QuantKit/PortfolioList.h \
    include/QuantKit/PortfolioManager.h \
    include/QuantKit/PortfolioPerformance.h \
    include/QuantKit/PortfolioStatistics.h \
    include/QuantKit/PortfolioStatisticsCategory.h \
    include/QuantKit/PortfolioStatisticsItem.h \
    include/QuantKit/PortfolioStatisticsItemList.h \
    include/QuantKit/PortfolioStatisticsType.h \
    include/QuantKit/Position.h \
    include/QuantKit/PositionSide.h \
    include/QuantKit/Pricer.h \
    include/QuantKit/Provider.h \
    include/QuantKit/ProviderErrorType.h \
    include/QuantKit/ProviderId.h \
    include/QuantKit/ProviderList.h \
    include/QuantKit/ProviderManager.h \
    include/QuantKit/ProviderPlugin.h \
    include/QuantKit/ProviderPropertyList.h \
    include/QuantKit/ProviderStatus.h \
    include/QuantKit/PutCall.h \
    include/QuantKit/QuoteSeries.h \
    include/QuantKit/RangeBarFactoryItem.h \
    include/QuantKit/ReminderCallback.h \
    include/QuantKit/Report.h \
    include/QuantKit/ReportItem.h \
    include/QuantKit/ReportManager.h \
    include/QuantKit/RequestResult.h \
    include/QuantKit/SaveMode.h \
    include/QuantKit/Scenario.h \
    include/QuantKit/SearchOption.h \
    include/QuantKit/SellSideInstrumentStrategy.h \
    include/QuantKit/SellSideStrategy.h \
    include/QuantKit/ServerConfiguration.h \
    include/QuantKit/SessionBarFactoryItem.h \
    include/QuantKit/ShortTradeCountReportItem.h \
    include/QuantKit/SlippageProvider.h \
    include/QuantKit/SolutionStatusType.h \
    include/QuantKit/SortedEventQueue.h \
    include/QuantKit/StatisticsManager.h \
    include/QuantKit/Stop.h \
    include/QuantKit/StopFillMode.h \
    include/QuantKit/StopMode.h \
    include/QuantKit/StopStatus.h \
    include/QuantKit/StopType.h \
    include/QuantKit/Strategy.h \
    include/QuantKit/StrategyList.h \
    include/QuantKit/StrategyManager.h \
    include/QuantKit/StrategyMethodAttribute.h \
    include/QuantKit/StrategyMode.h \
    include/QuantKit/StrategyStatus.h \
    include/QuantKit/StrategyStatusType.h \
    include/QuantKit/StreamerManager.h \
    include/QuantKit/StreamerPlugin.h \
    include/QuantKit/SubscriptionManager.h \
    include/QuantKit/Tick.h \
    include/QuantKit/TickBarFactoryItem.h \
    include/QuantKit/TickSeries.h \
    include/QuantKit/TickType.h \
    include/QuantKit/TimeBarFactoryItem.h \
    include/QuantKit/TimeInForce.h \
    include/QuantKit/TimeSeries.h \
    include/QuantKit/TradeCountReportItem.h \
    include/QuantKit/TradeDetectionType.h \
    include/QuantKit/TradeDetector.h \
    include/QuantKit/TradeInfo.h \
    include/QuantKit/Transaction.h \
    include/QuantKit/VolumeBarFactoryItem.h \
    src/BarFactoryItem_p.h \
    src/DataFile_p.h \
    src/DataObject_p.h \
    src/DataSeries_p.h \
    src/DataServer_p.h \
    src/Event_p.h \
    src/EventLogger_p.h \
    src/ExecutionMessage_p.h \
    src/FrameworkServer_p.h \
    src/Indicator_p.h \
    src/InstrumentServer_p.h \
    src/InstrumentStrategy_p.h \
    src/ObjectKey_p.h \
    src/ObjectStreamer_p.h \
    src/OrderServer_p.h \
    src/PortfolioStatisticsItem_p.h \
    src/Provider_p.h \
    src/quantkit_boost.h \
    src/ReportItem_p.h \
    src/Scenario_p.h \
    src/SellSideStrategy_p.h \
    src/SortedEventQueue_p.h \
    src/Strategy_p.h \
    src/Tick_p.h \
    src/TimeSeries_p.h \
    include/QuantKit/Event/AccountData.h \
    include/QuantKit/Event/Bar.h \
    include/QuantKit/Event/BarSlice.h \
    include/QuantKit/Event/DataCount.h \
    include/QuantKit/Event/ExecutionCommand.h \
    include/QuantKit/Event/ExecutionReport.h \
    include/QuantKit/Event/Fill.h \
    include/QuantKit/Event/Fundamental.h \
    include/QuantKit/Event/Group.h \
    include/QuantKit/Event/GroupEvent.h \
    include/QuantKit/Event/GroupUpdate.h \
    include/QuantKit/Event/HistoricalData.h \
    include/QuantKit/Event/HistoricalDataEnd.h \
    include/QuantKit/Event/Level2.h \
    include/QuantKit/Event/Level2Snapshot.h \
    include/QuantKit/Event/Level2Update.h \
    include/QuantKit/Event/News.h \
    include/QuantKit/Event/OnEventManagerPaused.h \
    include/QuantKit/Event/OnEventManagerResumed.h \
    include/QuantKit/Event/OnEventManagerStarted.h \
    include/QuantKit/Event/OnEventManagerStep.h \
    include/QuantKit/Event/OnEventManagerStopped.h \
    include/QuantKit/Event/OnExecutionCommand.h \
    include/QuantKit/Event/OnExecutionReport.h \
    include/QuantKit/Event/OnFill.h \
    include/QuantKit/Event/OnFrameworkCleared.h \
    include/QuantKit/Event/OnHeartbeat.h \
    include/QuantKit/Event/OnHistoricalData.h \
    include/QuantKit/Event/OnHistoricalDataEnd.h \
    include/QuantKit/Event/OnInstrumentAdded.h \
    include/QuantKit/Event/OnInstrumentDefinition.h \
    include/QuantKit/Event/OnInstrumentDefinitionEnd.h \
    include/QuantKit/Event/OnInstrumentDeleted.h \
    include/QuantKit/Event/OnLoggedIn.h \
    include/QuantKit/Event/OnLoggedOut.h \
    include/QuantKit/Event/OnLogin.h \
    include/QuantKit/Event/OnLoginRejected.h \
    include/QuantKit/Event/OnLogout.h \
    include/QuantKit/Event/OnNewOrder.h \
    include/QuantKit/Event/OnOrderCancelled.h \
    include/QuantKit/Event/OnOrderDone.h \
    include/QuantKit/Event/OnOrderFilled.h \
    include/QuantKit/Event/OnOrderManagerCleared.h \
    include/QuantKit/Event/OnOrderPartiallyFilled.h \
    include/QuantKit/Event/OnOrderRejected.h \
    include/QuantKit/Event/OnOrderReplaced.h \
    include/QuantKit/Event/OnOrderReplaceRejected.h \
    include/QuantKit/Event/OnOrderStatusChanged.h \
    include/QuantKit/Event/OnPendingNewOrder.h \
    include/QuantKit/Event/OnPortfolioAdded.h \
    include/QuantKit/Event/OnPortfolioDeleted.h \
    include/QuantKit/Event/OnPortfolioParentChanged.h \
    include/QuantKit/Event/OnPositionChanged.h \
    include/QuantKit/Event/OnPositionClosed.h \
    include/QuantKit/Event/OnPositionOpened.h \
    include/QuantKit/Event/OnProviderAdded.h \
    include/QuantKit/Event/OnProviderConnected.h \
    include/QuantKit/Event/OnProviderDisconnected.h \
    include/QuantKit/Event/OnProviderRemoved.h \
    include/QuantKit/Event/OnProviderStatusChanged.h \
    include/QuantKit/Event/OnQueueClosed.h \
    include/QuantKit/Event/OnQueueOpened.h \
    include/QuantKit/Event/OnSendOrder.h \
    include/QuantKit/Event/OnSimulatorProgress.h \
    include/QuantKit/Event/OnSimulatorStart.h \
    include/QuantKit/Event/OnSimulatorStop.h \
    include/QuantKit/Event/OnStrategyEvent.h \
    include/QuantKit/Event/OnSubscribe.h \
    include/QuantKit/Event/OnTransaction.h \
    include/QuantKit/Event/OnUnsubscribe.h \
    include/QuantKit/Event/OnUserCommand.h \
    include/QuantKit/Event/Order.h \
    include/QuantKit/Event/ParameterList.h \
    include/QuantKit/Event/ProviderError.h \
    include/QuantKit/Event/Quote.h \
    include/QuantKit/Event/Reminder.h \
    include/QuantKit/Event/SolutionStatusInfo.h \
    include/QuantKit/Event/StrategyStatusInfo.h \
    include/QuantKit/Event/TextInfo.h \
    include/QuantKit/Event/TimeSeriesItem.h \
    include/QuantKit/Level2UpdateAction.h \
    include/QuantKit/Account/Account.h \
    include/QuantKit/Account/AccountPosition.h \
    include/QuantKit/Account/AccountTransaction.h \
    include/QuantKit/AccountData/AccountDataEntry.h \
    include/QuantKit/AccountData/AccountDataField.h \
    include/QuantKit/AccountData/AccountDataManager.h \
    include/QuantKit/AccountData/AccountDataSnapshot.h \
    include/QuantKit/AccountData/AccountDataType.h \
    include/QuantKit/Streamer/AltIdStreamer.h \
    include/QuantKit/Streamer/AskStreamer.h \
    include/QuantKit/Streamer/AttributeStreamer.h \
    include/QuantKit/Streamer/BarStreamer.h \
    include/QuantKit/Streamer/BidStreamer.h \
    include/QuantKit/Streamer/BooleanStreamer.h \
    include/QuantKit/Streamer/ByteStreamer.h \
    include/QuantKit/Streamer/CharStreamer.h \
    include/QuantKit/Streamer/ColorStreamer.h \
    include/QuantKit/Streamer/DataKeyIdArrayStreamer.h \
    include/QuantKit/Streamer/DataObjectStreamer.h \
    include/QuantKit/Streamer/DataSeriesStreamer.h \
    include/QuantKit/Streamer/DateTimeStreamer.h \
    include/QuantKit/Streamer/DoubleStreamer.h \
    include/QuantKit/Streamer/EventStreamer.h \
    include/QuantKit/Streamer/ExecutionCommandStreamer.h \
    include/QuantKit/Streamer/ExecutionReportStreamer.h \
    include/QuantKit/Streamer/FieldListStreamer.h \
    include/QuantKit/Streamer/FillStreamer.h \
    include/QuantKit/Streamer/FreeKeyListStreamer.h \
    include/QuantKit/Streamer/FundamentalStreamer.h \
    include/QuantKit/Streamer/GroupEventStreamer.h \
    include/QuantKit/Streamer/GroupStreamer.h \
    include/QuantKit/Streamer/GroupUpdateStreamer.h \
    include/QuantKit/Streamer/InstrumentStreamer.h \
    include/QuantKit/Streamer/Int16Streamer.h \
    include/QuantKit/Streamer/Int32Streamer.h \
    include/QuantKit/Streamer/Int64Streamer.h \
    include/QuantKit/Streamer/LegStreamer.h \
    include/QuantKit/Streamer/Level2SnapshotStreamer.h \
    include/QuantKit/Streamer/Level2Streamer.h \
    include/QuantKit/Streamer/Level2UpdateStreamer.h \
    include/QuantKit/Streamer/NewsStreamer.h \
    include/QuantKit/Streamer/ObjectKeyListStreamer.h \
    include/QuantKit/Streamer/ObjectTableStreamer.h \
    include/QuantKit/Streamer/OnHeartbeatStreamer.h \
    include/QuantKit/Streamer/OnLoggedInStreamer.h \
    include/QuantKit/Streamer/OnLoginStreamer.h \
    include/QuantKit/Streamer/OnProviderConnectedStreamer.h \
    include/QuantKit/Streamer/OnProviderDisconnectedStreamer.h \
    include/QuantKit/Streamer/OnSubscribeStreamer.h \
    include/QuantKit/Streamer/OnUnsubscribeStreamer.h \
    include/QuantKit/Streamer/ParameterListStreamer.h \
    include/QuantKit/Streamer/ParameterStreamer.h \
    include/QuantKit/Streamer/PortfolioStreamer.h \
    include/QuantKit/Streamer/PositionStreamer.h \
    include/QuantKit/Streamer/ProviderErrorStreamer.h \
    include/QuantKit/Streamer/QuoteStreamer.h \
    include/QuantKit/Streamer/SolutionStatusStreamer.h \
    include/QuantKit/Streamer/StrategyStatusStreamer.h \
    include/QuantKit/Streamer/StringStreamer.h \
    include/QuantKit/Streamer/TextInfoStreamer.h \
    include/QuantKit/Streamer/TickStreamer.h \
    include/QuantKit/Streamer/TimeSeriesItemStreamer.h \
    include/QuantKit/Streamer/TimeSpanStreamer.h \
    include/QuantKit/Streamer/TradeStreamer.h \
    include/QuantKit/AccountData/AccountData.h \
    include/QuantKit/Fill.h

unix {
    target.path = /usr/lib
    INSTALLS += target
}
