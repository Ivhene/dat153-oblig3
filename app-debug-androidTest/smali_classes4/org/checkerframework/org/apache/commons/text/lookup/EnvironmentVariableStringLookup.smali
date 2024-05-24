.class final Lorg/checkerframework/org/apache/commons/text/lookup/EnvironmentVariableStringLookup;
.super Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;
.source "EnvironmentVariableStringLookup.java"


# static fields
.field static final INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/EnvironmentVariableStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 49
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/EnvironmentVariableStringLookup;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/lookup/EnvironmentVariableStringLookup;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/EnvironmentVariableStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/EnvironmentVariableStringLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    .line 56
    return-void
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .line 68
    if-eqz p1, :cond_0

    invoke-static {p1}, Ljava/lang/System;->getenv(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
