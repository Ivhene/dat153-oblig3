.class Lorg/checkerframework/org/apache/commons/lang3/text/StrLookup$SystemPropertiesStrLookup;
.super Lorg/checkerframework/org/apache/commons/lang3/text/StrLookup;
.source "StrLookup.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/text/StrLookup;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SystemPropertiesStrLookup"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/org/apache/commons/lang3/text/StrLookup<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 168
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/lang3/text/StrLookup;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/apache/commons/lang3/text/StrLookup$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/apache/commons/lang3/text/StrLookup$1;

    .line 168
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/lang3/text/StrLookup$SystemPropertiesStrLookup;-><init>()V

    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 174
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 176
    :try_start_0
    invoke-static {p1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 177
    :catch_0
    move-exception v0

    .line 181
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method