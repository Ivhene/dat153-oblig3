.class public Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$UnicodeUnescaper;,
        Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$OctalUnescaper;,
        Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;,
        Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;,
        Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;
    }
.end annotation


# static fields
.field private static final ESCAPE_JAVA:Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

.field private static final JAVA_CTRL_CHARS_ESCAPE:[[Ljava/lang/String;

.field private static final JAVA_CTRL_CHARS_UNESCAPE:[[Ljava/lang/String;

.field private static final UNESCAPE_JAVA:Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 17

    .line 74
    const/4 v0, 0x5

    new-array v1, v0, [[Ljava/lang/String;

    const-string v2, "\\b"

    const-string v3, "\u0008"

    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aput-object v4, v1, v5

    const-string v4, "\\n"

    const-string v6, "\n"

    filled-new-array {v4, v6}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    aput-object v7, v1, v8

    const-string v7, "\\t"

    const-string v9, "\t"

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v1, v11

    const-string v10, "\\f"

    const-string v12, "\u000c"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v13

    const/4 v14, 0x3

    aput-object v13, v1, v14

    const-string v13, "\\r"

    const-string v15, "\r"

    filled-new-array {v13, v15}, [Ljava/lang/String;

    move-result-object v16

    const/4 v14, 0x4

    aput-object v16, v1, v14

    sput-object v1, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils;->JAVA_CTRL_CHARS_UNESCAPE:[[Ljava/lang/String;

    .line 82
    new-array v0, v0, [[Ljava/lang/String;

    filled-new-array {v3, v2}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v5

    filled-new-array {v6, v4}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v8

    filled-new-array {v9, v7}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v11

    filled-new-array {v12, v10}, [Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x3

    aput-object v2, v0, v3

    filled-new-array {v15, v13}, [Ljava/lang/String;

    move-result-object v2

    aput-object v2, v0, v14

    sput-object v0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils;->JAVA_CTRL_CHARS_ESCAPE:[[Ljava/lang/String;

    .line 90
    new-instance v2, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;

    new-array v3, v11, [Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;

    new-array v6, v11, [[Ljava/lang/String;

    const-string v7, "\""

    const-string v9, "\\\""

    filled-new-array {v7, v9}, [Ljava/lang/String;

    move-result-object v10

    aput-object v10, v6, v5

    const-string v10, "\\"

    const-string v12, "\\\\"

    filled-new-array {v10, v12}, [Ljava/lang/String;

    move-result-object v13

    aput-object v13, v6, v8

    invoke-direct {v4, v6}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v4, v3, v5

    new-instance v4, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;

    .line 97
    invoke-virtual {v0}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [[Ljava/lang/CharSequence;

    invoke-direct {v4, v0}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v4, v3, v8

    invoke-direct {v2, v3}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;-><init>([Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;)V

    sput-object v2, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils;->ESCAPE_JAVA:Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    .line 100
    new-instance v0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;

    new-array v2, v14, [Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$OctalUnescaper;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$OctalUnescaper;-><init>(Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$1;)V

    aput-object v3, v2, v5

    new-instance v3, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$UnicodeUnescaper;

    invoke-direct {v3, v4}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$UnicodeUnescaper;-><init>(Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$1;)V

    aput-object v3, v2, v8

    new-instance v3, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;

    .line 104
    invoke-virtual {v1}, [[Ljava/lang/String;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [[Ljava/lang/CharSequence;

    invoke-direct {v3, v1}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v3, v2, v11

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;

    new-array v3, v14, [[Ljava/lang/String;

    filled-new-array {v12, v10}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v5

    filled-new-array {v9, v7}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v8

    const-string v4, "\\\'"

    const-string v5, "\'"

    filled-new-array {v4, v5}, [Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v11

    const-string v4, ""

    filled-new-array {v10, v4}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    aput-object v4, v3, v5

    invoke-direct {v1, v3}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$LookupTranslator;-><init>([[Ljava/lang/CharSequence;)V

    aput-object v1, v2, v5

    invoke-direct {v0, v2}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$AggregateTranslator;-><init>([Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    .line 100
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 33
    return-void
.end method

.method public static escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .line 56
    sget-object v0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils;->ESCAPE_JAVA:Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "input"
        }
    .end annotation

    .line 71
    sget-object v0, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/utils/StringEscapeUtils$CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
