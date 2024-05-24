.class Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;
.super Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$PatternStrategy;
.source "FastDateParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "ISO8601TimeZoneStrategy"
.end annotation


# static fields
.field private static final ISO_8601_1_STRATEGY:Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final ISO_8601_2_STRATEGY:Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$Strategy;

.field private static final ISO_8601_3_STRATEGY:Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$Strategy;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 935
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}))"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_1_STRATEGY:Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 936
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}\\d{2}))"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_2_STRATEGY:Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$Strategy;

    .line 937
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;

    const-string v1, "(Z|(?:[+-]\\d{2}(?::)\\d{2}))"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;-><init>(Ljava/lang/String;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$Strategy;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;)V
    .locals 1
    .param p1, "pattern"    # Ljava/lang/String;

    .line 923
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$PatternStrategy;-><init>(Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$1;)V

    .line 924
    invoke-virtual {p0, p1}, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->createPattern(Ljava/lang/String;)V

    .line 925
    return-void
.end method

.method static synthetic access$400()Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$Strategy;
    .locals 1

    .line 916
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$Strategy;

    return-object v0
.end method

.method static getStrategy(I)Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$Strategy;
    .locals 2
    .param p0, "tokenLen"    # I

    .line 947
    packed-switch p0, :pswitch_data_0

    .line 955
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid number of X"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 953
    :pswitch_0
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_3_STRATEGY:Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$Strategy;

    return-object v0

    .line 951
    :pswitch_1
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_2_STRATEGY:Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$Strategy;

    return-object v0

    .line 949
    :pswitch_2
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$ISO8601TimeZoneStrategy;->ISO_8601_1_STRATEGY:Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser$Strategy;

    return-object v0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method setCalendar(Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser;Ljava/util/Calendar;Ljava/lang/String;)V
    .locals 1
    .param p1, "parser"    # Lorg/checkerframework/org/apache/commons/lang3/time/FastDateParser;
    .param p2, "cal"    # Ljava/util/Calendar;
    .param p3, "value"    # Ljava/lang/String;

    .line 932
    invoke-static {p3}, Lorg/checkerframework/org/apache/commons/lang3/time/FastTimeZone;->getGmtTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/util/Calendar;->setTimeZone(Ljava/util/TimeZone;)V

    .line 933
    return-void
.end method
