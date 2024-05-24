.class final Lorg/checkerframework/org/apache/commons/text/lookup/DateStringLookup;
.super Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;
.source "DateStringLookup.java"


# static fields
.field static final INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/DateStringLookup;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/lookup/DateStringLookup;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/lookup/DateStringLookup;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/lookup/DateStringLookup;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/lookup/DateStringLookup;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 57
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/lookup/AbstractStringLookup;-><init>()V

    .line 59
    return-void
.end method

.method private formatDate(JLjava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "date"    # J
    .param p3, "format"    # Ljava/lang/String;

    .line 69
    const/4 v0, 0x0

    .line 70
    .local v0, "dateFormat":Lorg/checkerframework/org/apache/commons/lang3/time/FastDateFormat;
    if-eqz p3, :cond_0

    .line 72
    :try_start_0
    invoke-static {p3}, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateFormat;->getInstance(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/lang3/time/FastDateFormat;

    move-result-object v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v1

    .line 75
    goto :goto_0

    .line 73
    :catch_0
    move-exception v1

    .line 74
    .local v1, "ex":Ljava/lang/Exception;
    const-string v2, "Invalid date format: [%s]"

    filled-new-array {p3}, [Ljava/lang/Object;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lorg/checkerframework/org/apache/commons/text/lookup/IllegalArgumentExceptions;->format(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/IllegalArgumentException;

    move-result-object v2

    throw v2

    .line 77
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 78
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateFormat;->getInstance()Lorg/checkerframework/org/apache/commons/lang3/time/FastDateFormat;

    move-result-object v0

    .line 80
    :cond_1
    new-instance v1, Ljava/util/Date;

    invoke-direct {v1, p1, p2}, Ljava/util/Date;-><init>(J)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public lookup(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .line 92
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-direct {p0, v0, v1, p1}, Lorg/checkerframework/org/apache/commons/text/lookup/DateStringLookup;->formatDate(JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
