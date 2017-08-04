package org.bubblecloud.proxy

import org.littleshoot.proxy.impl.DefaultHttpProxyServer

fun main(args : Array<String>) {
    val port = Integer.parseInt(System.getenv("PROXY_PORT"))
    val server = DefaultHttpProxyServer.bootstrap()
            .withAllowLocalOnly(false)
            .withPort(port)
            .start()
}