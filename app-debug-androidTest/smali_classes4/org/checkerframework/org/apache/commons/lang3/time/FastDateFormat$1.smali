.class Lorg/checkerframework/org/apache/commons/lang3/time/FastDateFormat$1;
.super Lorg/checkerframework/org/apache/commons/lang3/time/FormatCache;
.source "FastDateFormat.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/time/FastDateFormat;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/org/apache/commons/lang3/time/FormatCache<",
        "Lorg/checkerframework/org/apache/commons/lang3/time/FastDateFormat;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 102
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/lang3/time/FormatCache;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Ljava/text/Format;
    .locals 0

    .line 102
    invoke-virtual {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateFormat$1;->createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/checkerframework/org/apache/commons/lang3/time/FastDateFormat;

    move-result-object p1

    return-object p1
.end method

.method protected createInstance(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)Lorg/checkerframework/org/apache/commons/lang3/time/FastDateFormat;
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;
    .param p2, "timeZone"    # Ljava/util/TimeZone;
    .param p3, "locale"    # Ljava/util/Locale;

    .line 105
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateFormat;

    invoke-direct {v0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateFormat;-><init>(Ljava/lang/String;Ljava/util/TimeZone;Ljava/util/Locale;)V

    return-object v0
.end method