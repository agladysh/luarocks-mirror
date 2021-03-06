package = "OiL"
version = "0.4beta-1"
source = {
	url = "http://luaforge.net/frs/download.php/3558/oil-0.4-beta.tar.gz",
}
description = {
	summary = "An Object Request Broker in Lua",
	detailed = [[
		OiL stands for ORB in Lua and it is a very portable and lightweight
		implementation of easy-to-use object request brokers (ORB) written in Lua.
		OiL ORBs are made of assembled components that can be selectively chosen or
		replaced to create ORBs with different features. Currently, it provides
		components that support cooperative multithreading (with coroutines),
		interoperability with CORBA (through IIOP), interception of CORBA
		invocations, etc.
	]],
	license = "MIT/X11",
	homepage = "http://oil.luaforge.net/",
	maintainer = "Renato Maia <maia@tecgraf.puc-rio.br>",
}
dependencies = {
	"lua >= 5.1",
	"luasocket >= 2.0",
	"loop == 2.3beta",
	"luaidl == 0.8.9beta",
}
build = {
	type = "module",
	modules = {
		["oil.arch.base"] = "lua/oil/arch/base.lua",
		["oil.arch.cooperative"] = "lua/oil/arch/cooperative.lua",
		["oil.arch.corba"] = "lua/oil/arch/corba.lua",
		["oil.arch.ludo"] = "lua/oil/arch/ludo.lua",
		["oil.arch.typed"] = "lua/oil/arch/typed.lua",
		["oil.arch"] = "lua/oil/arch.lua",
		["oil.assert"] = "lua/oil/assert.lua",
		["oil.bit"] = "src/oilbit.c",
		["oil.builder.base"] = "lua/oil/builder/base.lua",
		["oil.builder.cooperative"] = "lua/oil/builder/cooperative.lua",
		["oil.builder.corba"] = "lua/oil/builder/corba.lua",
		["oil.builder.intercepted"] = "lua/oil/builder/intercepted.lua",
		["oil.builder.ludo"] = "lua/oil/builder/ludo.lua",
		["oil.builder.typed"] = "lua/oil/builder/typed.lua",
		["oil.builder"] = "lua/oil/builder.lua",
		["oil.component"] = "lua/oil/component.lua",
		["oil.corba.giop.Codec"] = "lua/oil/corba/giop/Codec.lua",
		["oil.corba.giop.Exception"] = "lua/oil/corba/giop/Exception.lua",
		["oil.corba.giop.Indexer"] = "lua/oil/corba/giop/Indexer.lua",
		["oil.corba.giop.Listener"] = "lua/oil/corba/giop/Listener.lua",
		["oil.corba.giop.Messenger"] = "lua/oil/corba/giop/Messenger.lua",
		["oil.corba.giop.ProxyOps"] = "lua/oil/corba/giop/ProxyOps.lua",
		["oil.corba.giop.Referrer"] = "lua/oil/corba/giop/Referrer.lua",
		["oil.corba.giop.Requester"] = "lua/oil/corba/giop/Requester.lua",
		["oil.corba.giop.ServantOps"] = "lua/oil/corba/giop/ServantOps.lua",
		["oil.corba.giop"] = "lua/oil/corba/giop.lua",
		["oil.corba.idl.Compiler"] = "lua/oil/corba/idl/Compiler.lua",
		["oil.corba.idl.Importer"] = "lua/oil/corba/idl/Importer.lua",
		["oil.corba.idl.Indexer"] = "lua/oil/corba/idl/Indexer.lua",
		["oil.corba.idl.ir"] = "lua/oil/corba/idl/ir.lua",
		["oil.corba.idl.Registry"] = "lua/oil/corba/idl/Registry.lua",
		["oil.corba.idl.sysex"] = "lua/oil/corba/idl/sysex.lua",
		["oil.corba.idl"] = "lua/oil/corba/idl.lua",
		["oil.corba.iiop.Profiler"] = "lua/oil/corba/iiop/Profiler.lua",
		["oil.corba.interceptors.ClientSide"] = "lua/oil/corba/interceptors/ClientSide.lua",
		["oil.corba.interceptors.ServerSide"] = "lua/oil/corba/interceptors/ServerSide.lua",
		["oil.corba.services.event.ConsumerAdmin"] = "lua/oil/corba/services/event/ConsumerAdmin.lua",
		["oil.corba.services.event.EventFactory"] = "lua/oil/corba/services/event/EventFactory.lua",
		["oil.corba.services.event.EventQueue"] = "lua/oil/corba/services/event/EventQueue.lua",
		["oil.corba.services.event.ProxyPushConsumer"] = "lua/oil/corba/services/event/ProxyPushConsumer.lua",
		["oil.corba.services.event.ProxyPushSupplier"] = "lua/oil/corba/services/event/ProxyPushSupplier.lua",
		["oil.corba.services.event.SingleDeferredDispatcher"] = "lua/oil/corba/services/event/SingleDeferredDispatcher.lua",
		["oil.corba.services.event.SingleSynchronousDispatcher"] = "lua/oil/corba/services/event/SingleSynchronousDispatcher.lua",
		["oil.corba.services.event.SupplierAdmin"] = "lua/oil/corba/services/event/SupplierAdmin.lua",
		["oil.corba.services.event"] = "lua/oil/corba/services/event.lua",
		["oil.corba.services.naming"] = "lua/oil/corba/services/naming.lua",
		["oil.Exception"] = "lua/oil/Exception.lua",
		["oil.kernel.base.Acceptor"] = "lua/oil/kernel/base/Acceptor.lua",
		["oil.kernel.base.Client"] = "lua/oil/kernel/base/Client.lua",
		["oil.kernel.base.Connector"] = "lua/oil/kernel/base/Connector.lua",
		["oil.kernel.base.Dispatcher"] = "lua/oil/kernel/base/Dispatcher.lua",
		["oil.kernel.base.Invoker"] = "lua/oil/kernel/base/Invoker.lua",
		["oil.kernel.base.Proxies"] = "lua/oil/kernel/base/Proxies.lua",
		["oil.kernel.base.Receiver"] = "lua/oil/kernel/base/Receiver.lua",
		["oil.kernel.base.Server"] = "lua/oil/kernel/base/Server.lua",
		["oil.kernel.base.Sockets"] = "lua/oil/kernel/base/Sockets.lua",
		["oil.kernel.cooperative.Invoker"] = "lua/oil/kernel/cooperative/Invoker.lua",
		["oil.kernel.cooperative.Mutex"] = "lua/oil/kernel/cooperative/Mutex.lua",
		["oil.kernel.cooperative.Receiver"] = "lua/oil/kernel/cooperative/Receiver.lua",
		["oil.kernel.typed.Client"] = "lua/oil/kernel/typed/Client.lua",
		["oil.kernel.typed.Dispatcher"] = "lua/oil/kernel/typed/Dispatcher.lua",
		["oil.kernel.typed.Proxies"] = "lua/oil/kernel/typed/Proxies.lua",
		["oil.kernel.typed.Server"] = "lua/oil/kernel/typed/Server.lua",
		["oil.ludo.Codec"] = "lua/oil/ludo/Codec.lua",
		["oil.ludo.Listener"] = "lua/oil/ludo/Listener.lua",
		["oil.ludo.Referrer"] = "lua/oil/ludo/Referrer.lua",
		["oil.ludo.Requester"] = "lua/oil/ludo/Requester.lua",
		["oil.oo"] = "lua/oil/oo.lua",
		["oil.port"] = "lua/oil/port.lua",
		["oil.properties"] = "lua/oil/properties.lua",
		["oil.verbose"] = "lua/oil/verbose.lua",
		["oil"] = "lua/oil.lua",
	},
	install = {
		bin = {
			"lua/idl2lua.lua",
			"demo/cos/ird.lua",
			"demo/cos/nsd.lua",
			"demo/cos/channeld.lua",
		},
	},
}
