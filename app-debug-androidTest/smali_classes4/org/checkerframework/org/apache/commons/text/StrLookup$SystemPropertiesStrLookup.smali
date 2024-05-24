.class final Lorg/checkerframework/org/apache/commons/text/StrLookup$SystemPropertiesStrLookup;
.super Lorg/checkerframework/org/apache/commons/text/StrLookup;
.source "StrLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/text/StrLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "SystemPropertiesStrLookup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/org/apache/commons/text/StrLookup<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 196
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/StrLookup;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/apache/commons/text/StrLookup$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/apache/commons/text/StrLookup$1;

    .line 196
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/StrLookup$SystemPropertiesStrLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 202
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-lez v0, :cond_0

    .line 204
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 205
    :catch_0
    move-exception v0

    .line 207
    .local v0, "scex":Ljava/lang/SecurityException;
    return-object v1

    .line 210
    .end local v0    # "scex":Ljava/lang/SecurityException;
    :cond_0
    return-object v1
.end method
