.class public Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;,
        Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils$CsvEscaper;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field public static final ESCAPE_CSV:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_ECMASCRIPT:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML3:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML4:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JAVA:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JSON:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final ESCAPE_XML10:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML11:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_CSV:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_ECMASCRIPT:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML3:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML4:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JAVA:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JSON:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_XML:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 22

    .line 57
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    const/4 v1, 0x2

    new-array v2, v1, [[Ljava/lang/String;

    const-string v3, "\""

    const-string v4, "\\\""

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v2, v6

    const-string v5, "\\"

    const-string v7, "\\\\"

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x1

    aput-object v8, v2, v9

    invoke-direct {v0, v2}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    new-array v2, v9, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v8, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 63
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v10

    invoke-direct {v8, v10}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v2, v6

    .line 62
    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;->with([Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v0

    new-array v2, v9, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 65
    const/16 v8, 0x20

    const/16 v10, 0x7f

    invoke-static {v8, v10}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/checkerframework/org/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v11

    aput-object v11, v2, v6

    .line 64
    invoke-virtual {v0, v2}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->with([Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JAVA:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 77
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v2, 0x3

    new-array v11, v2, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v12, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    const/4 v13, 0x4

    new-array v14, v13, [[Ljava/lang/String;

    const-string v15, "\'"

    const-string v13, "\\\'"

    filled-new-array {v15, v13}, [Ljava/lang/String;

    move-result-object v17

    aput-object v17, v14, v6

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v17

    aput-object v17, v14, v9

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v17

    aput-object v17, v14, v1

    const-string v1, "/"

    const-string v8, "\\/"

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v2

    invoke-direct {v12, v14}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v12, v11, v6

    new-instance v12, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 86
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v14

    invoke-direct {v12, v14}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v12, v11, v9

    .line 87
    const/16 v12, 0x20

    invoke-static {v12, v10}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/checkerframework/org/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v14

    const/4 v12, 0x2

    aput-object v14, v11, v12

    invoke-direct {v0, v11}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 99
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v11, v2, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v12, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    new-array v14, v2, [[Ljava/lang/String;

    filled-new-array {v3, v4}, [Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v6

    filled-new-array {v5, v7}, [Ljava/lang/String;

    move-result-object v18

    aput-object v18, v14, v9

    filled-new-array {v1, v8}, [Ljava/lang/String;

    move-result-object v1

    const/4 v8, 0x2

    aput-object v1, v14, v8

    invoke-direct {v12, v14}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v12, v11, v6

    new-instance v1, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 107
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE()[[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v1, v12}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v1, v11, v9

    .line 108
    const/16 v1, 0x20

    invoke-static {v1, v10}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/checkerframework/org/apache/commons/lang3/text/translate/JavaUnicodeEscaper;

    move-result-object v1

    aput-object v1, v11, v8

    invoke-direct {v0, v11}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JSON:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 122
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v8, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v8, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 124
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v1, v6

    new-instance v8, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 125
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v1, v9

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 137
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v1, 0x6

    new-array v8, v1, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v11, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 139
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v11, v8, v6

    new-instance v11, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 140
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v12

    invoke-direct {v11, v12}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v11, v8, v9

    new-instance v11, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    const/16 v12, 0x1f

    new-array v14, v12, [[Ljava/lang/String;

    const-string v12, "\u0000"

    const-string v10, ""

    filled-new-array {v12, v10}, [Ljava/lang/String;

    move-result-object v19

    aput-object v19, v14, v6

    const-string v6, "\u0001"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v9

    const-string v6, "\u0002"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v17, 0x2

    aput-object v6, v14, v17

    const-string v6, "\u0003"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v2

    const-string v6, "\u0004"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v16, 0x4

    aput-object v6, v14, v16

    const-string v6, "\u0005"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/4 v9, 0x5

    aput-object v6, v14, v9

    const-string v6, "\u0006"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    aput-object v6, v14, v1

    const-string v6, "\u0007"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v20, 0x7

    aput-object v6, v14, v20

    const-string v6, "\u0008"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v1, 0x8

    aput-object v6, v14, v1

    const-string v6, "\u000b"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x9

    aput-object v6, v14, v21

    const-string v6, "\u000c"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0xa

    aput-object v6, v14, v21

    const-string v6, "\u000e"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0xb

    aput-object v6, v14, v21

    const-string v6, "\u000f"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0xc

    aput-object v6, v14, v21

    const-string v6, "\u0010"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0xd

    aput-object v6, v14, v21

    const-string v6, "\u0011"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0xe

    aput-object v6, v14, v21

    const-string v6, "\u0012"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0xf

    aput-object v6, v14, v21

    const-string v6, "\u0013"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x10

    aput-object v6, v14, v21

    const-string v6, "\u0014"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x11

    aput-object v6, v14, v21

    const-string v6, "\u0015"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x12

    aput-object v6, v14, v21

    const-string v6, "\u0016"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x13

    aput-object v6, v14, v21

    const-string v6, "\u0017"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x14

    aput-object v6, v14, v21

    const-string v6, "\u0018"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x15

    aput-object v6, v14, v21

    const-string v6, "\u0019"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x16

    aput-object v6, v14, v21

    const-string v6, "\u001a"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x17

    aput-object v6, v14, v21

    const-string v6, "\u001b"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x18

    aput-object v6, v14, v21

    const-string v6, "\u001c"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x19

    aput-object v6, v14, v21

    const-string v6, "\u001d"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x1a

    aput-object v6, v14, v21

    const-string v6, "\u001e"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x1b

    aput-object v6, v14, v21

    const-string v6, "\u001f"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x1c

    aput-object v6, v14, v21

    const-string v6, "\ufffe"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x1d

    aput-object v6, v14, v21

    const-string v6, "\uffff"

    filled-new-array {v6, v10}, [Ljava/lang/String;

    move-result-object v6

    const/16 v21, 0x1e

    aput-object v6, v14, v21

    invoke-direct {v11, v14}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v6, 0x2

    aput-object v11, v8, v6

    .line 175
    const/16 v6, 0x84

    const/16 v11, 0x7f

    invoke-static {v11, v6}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v6

    aput-object v6, v8, v2

    .line 176
    const/16 v6, 0x86

    const/16 v11, 0x9f

    invoke-static {v6, v11}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v6

    const/4 v11, 0x4

    aput-object v6, v8, v11

    new-instance v6, Lorg/checkerframework/org/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v6}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    aput-object v6, v8, v9

    invoke-direct {v0, v8}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML10:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 189
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v6, v1, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v8, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 191
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v8, v11}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v11, 0x0

    aput-object v8, v6, v11

    new-instance v8, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 192
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->APOS_ESCAPE()[[Ljava/lang/String;

    move-result-object v14

    invoke-direct {v8, v14}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v14, 0x1

    aput-object v8, v6, v14

    new-instance v8, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    new-array v1, v9, [[Ljava/lang/String;

    filled-new-array {v12, v10}, [Ljava/lang/String;

    move-result-object v12

    aput-object v12, v1, v11

    const-string v11, "\u000b"

    const-string v12, "&#11;"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v14

    const-string v11, "\u000c"

    const-string v12, "&#12;"

    filled-new-array {v11, v12}, [Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x2

    aput-object v11, v1, v12

    const-string v11, "\ufffe"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    aput-object v11, v1, v2

    const-string v11, "\uffff"

    filled-new-array {v11, v10}, [Ljava/lang/String;

    move-result-object v11

    const/4 v14, 0x4

    aput-object v11, v1, v14

    invoke-direct {v8, v1}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v8, v6, v12

    .line 201
    const/4 v1, 0x1

    const/16 v8, 0x8

    invoke-static {v1, v8}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v8

    aput-object v8, v6, v2

    .line 202
    const/16 v1, 0xe

    const/16 v8, 0x1f

    invoke-static {v1, v8}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v1

    aput-object v1, v6, v14

    .line 203
    const/16 v1, 0x84

    const/16 v8, 0x7f

    invoke-static {v8, v1}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v1

    aput-object v1, v6, v9

    .line 204
    const/16 v1, 0x86

    const/16 v8, 0x9f

    invoke-static {v1, v8}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityEscaper;->between(II)Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityEscaper;

    move-result-object v1

    const/4 v8, 0x6

    aput-object v1, v6, v8

    new-instance v1, Lorg/checkerframework/org/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v1}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    aput-object v1, v6, v20

    invoke-direct {v0, v6}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML11:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 217
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v1, 0x2

    new-array v6, v1, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v1, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 219
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    aput-object v1, v6, v8

    new-instance v1, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 220
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v1, v8}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v8, 0x1

    aput-object v1, v6, v8

    invoke-direct {v0, v6}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML3:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 232
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v2, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v6, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 234
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->BASIC_ESCAPE()[[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v8, 0x0

    aput-object v6, v1, v8

    new-instance v6, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 235
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_ESCAPE()[[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v8, 0x1

    aput-object v6, v1, v8

    new-instance v6, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 236
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_ESCAPE()[[Ljava/lang/String;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v8, 0x2

    aput-object v6, v1, v8

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML4:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 248
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils$CsvEscaper;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils$CsvEscaper;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_CSV:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 290
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v1, 0x4

    new-array v6, v1, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v1, Lorg/checkerframework/org/apache/commons/lang3/text/translate/OctalUnescaper;

    invoke-direct {v1}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/OctalUnescaper;-><init>()V

    const/4 v8, 0x0

    aput-object v1, v6, v8

    new-instance v1, Lorg/checkerframework/org/apache/commons/lang3/text/translate/UnicodeUnescaper;

    invoke-direct {v1}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/UnicodeUnescaper;-><init>()V

    const/4 v8, 0x1

    aput-object v1, v6, v8

    new-instance v1, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 294
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE()[[Ljava/lang/String;

    move-result-object v9

    invoke-direct {v1, v9}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v9, 0x2

    aput-object v1, v6, v9

    new-instance v1, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    const/4 v11, 0x4

    new-array v12, v11, [[Ljava/lang/String;

    filled-new-array {v7, v5}, [Ljava/lang/String;

    move-result-object v7

    const/4 v11, 0x0

    aput-object v7, v12, v11

    filled-new-array {v4, v3}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v8

    filled-new-array {v13, v15}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v9

    filled-new-array {v5, v10}, [Ljava/lang/String;

    move-result-object v3

    aput-object v3, v12, v2

    invoke-direct {v1, v12}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v1, v6, v2

    invoke-direct {v0, v6}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 313
    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 324
    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JSON:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 335
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v2, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v3, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 337
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-instance v3, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 338
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v5, 0x1

    aput-object v3, v1, v5

    new-instance v3, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v5, v4, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v3, v5}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v4, 0x2

    aput-object v3, v1, v4

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 351
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;

    const/4 v1, 0x4

    new-array v1, v1, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v3, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 353
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v4, 0x0

    aput-object v3, v1, v4

    new-instance v3, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 354
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->ISO8859_1_UNESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    aput-object v3, v1, v4

    new-instance v3, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 355
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->HTML40_EXTENDED_UNESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v4, 0x2

    aput-object v3, v1, v4

    new-instance v3, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    const/4 v4, 0x0

    new-array v5, v4, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v3, v5}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 368
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;

    new-array v1, v2, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 370
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->BASIC_UNESCAPE()[[Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;

    .line 371
    invoke-static {}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/EntityArrays;->APOS_UNESCAPE()[[Ljava/lang/String;

    move-result-object v4

    invoke-direct {v2, v4}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;

    new-array v3, v3, [Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper;-><init>([Lorg/checkerframework/org/apache/commons/lang3/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_XML:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    .line 384
    new-instance v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils$CsvUnescaper;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_CSV:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 431
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 432
    return-void
.end method

.method public static final escapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 778
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_CSV:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 485
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 606
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML3:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 593
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_HTML4:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 457
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JAVA:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 513
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_JSON:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 668
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeXml10(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 700
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML10:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeXml11(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 730
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->ESCAPE_XML11:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 803
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_CSV:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 543
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 642
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 628
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 526
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 560
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_JSON:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 752
    sget-object v0, Lorg/checkerframework/org/apache/commons/lang3/StringEscapeUtils;->UNESCAPE_XML:Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/lang3/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method