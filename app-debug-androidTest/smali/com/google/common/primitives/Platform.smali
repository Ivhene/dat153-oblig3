.class final Lcom/google/common/primitives/Platform;
.super Ljava/lang/Object;
.source "Platform.java"


# static fields
.field private static final GWT_RPC_PROPERTY_NAME:Ljava/lang/String; = "guava.gwt.emergency_reenable_rpc"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static checkGwtRpcEnabled()V
    .locals 4

    .line 28
    const-string v0, "true"

    const-string v1, "guava.gwt.emergency_reenable_rpc"

    invoke-static {v1, v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 38
    return-void

    .line 29
    :cond_0
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v2, "https://stackoverflow.com/q/5189914/28465"

    const-string v3, "https://groups.google.com/d/msg/guava-announce/zHZTFg7YF3o/rQNnwdHeEwAJ"

    filled-new-array {v1, v2, v3}, [Ljava/lang/Object;

    move-result-object v1

    .line 30
    const-string v2, "We are removing GWT-RPC support for Guava types. You can temporarily reenable support by setting the system property %s to true. For more about system properties, see %s. For more about Guava\'s GWT-RPC support, see %s."

    invoke-static {v2, v1}, Lcom/google/common/base/Strings;->lenientFormat(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
