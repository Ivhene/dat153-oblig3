.class public Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;
.super Ljava/lang/Object;
.source "StringEscapeUtils.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$Builder;,
        Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$XsiUnescaper;
    }
.end annotation


# static fields
.field public static final ESCAPE_CSV:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_ECMASCRIPT:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML3:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_HTML4:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JAVA:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_JSON:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML10:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XML11:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

.field public static final ESCAPE_XSI:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_CSV:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_ECMASCRIPT:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML3:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_HTML4:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JAVA:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_JSON:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_XML:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

.field public static final UNESCAPE_XSI:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    .line 64
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 65
    .local v0, "escapeJavaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    const-string v1, "\""

    const-string v2, "\\\""

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 66
    const-string v3, "\\"

    const-string v4, "\\\\"

    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 67
    new-instance v5, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;

    const/4 v6, 0x3

    new-array v7, v6, [Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v8, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    .line 68
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v8, v9}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    new-instance v8, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v10, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE:Ljava/util/Map;

    invoke-direct {v8, v10}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v10, 0x1

    aput-object v8, v7, v10

    .line 70
    const/16 v8, 0x20

    const/16 v11, 0x7f

    invoke-static {v8, v11}, Lorg/checkerframework/org/apache/commons/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/checkerframework/org/apache/commons/text/translate/JavaUnicodeEscaper;

    move-result-object v12

    const/4 v13, 0x2

    aput-object v12, v7, v13

    invoke-direct {v5, v7}, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v5, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_JAVA:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 83
    .end local v0    # "escapeJavaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 84
    .local v0, "escapeEcmaScriptMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    const-string v5, "\'"

    const-string v7, "\\\'"

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 85
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 86
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 87
    const-string v12, "/"

    const-string v14, "\\/"

    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 88
    new-instance v15, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;

    new-array v13, v6, [Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v6, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    .line 89
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v8

    invoke-direct {v6, v8}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    aput-object v6, v13, v9

    new-instance v6, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v8, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE:Ljava/util/Map;

    invoke-direct {v6, v8}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    aput-object v6, v13, v10

    .line 91
    const/16 v6, 0x20

    invoke-static {v6, v11}, Lorg/checkerframework/org/apache/commons/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/checkerframework/org/apache/commons/text/translate/JavaUnicodeEscaper;

    move-result-object v8

    const/4 v6, 0x2

    aput-object v8, v13, v6

    invoke-direct {v15, v13}, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v15, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 104
    .end local v0    # "escapeEcmaScriptMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 105
    .local v0, "escapeJsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 106
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 107
    invoke-interface {v0, v12, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    new-instance v6, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;

    const/4 v8, 0x3

    new-array v12, v8, [Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v8, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    .line 109
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v13

    invoke-direct {v8, v13}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    aput-object v8, v12, v9

    new-instance v8, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v13, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->JAVA_CTRL_CHARS_ESCAPE:Ljava/util/Map;

    invoke-direct {v8, v13}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    aput-object v8, v12, v10

    .line 111
    const/16 v8, 0x7e

    const/16 v13, 0x20

    invoke-static {v13, v8}, Lorg/checkerframework/org/apache/commons/text/translate/JavaUnicodeEscaper;->outsideOf(II)Lorg/checkerframework/org/apache/commons/text/translate/JavaUnicodeEscaper;

    move-result-object v8

    const/4 v13, 0x2

    aput-object v8, v12, v13

    invoke-direct {v6, v12}, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v6, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_JSON:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 124
    .end local v0    # "escapeJsonMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 125
    .local v0, "escapeXml10Map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    const-string v6, "\u0000"

    const-string v8, ""

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 126
    const-string v12, "\u0001"

    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 127
    const-string v12, "\u0002"

    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 128
    const-string v12, "\u0003"

    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    const-string v12, "\u0004"

    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 130
    const-string v12, "\u0005"

    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 131
    const-string v12, "\u0006"

    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 132
    const-string v12, "\u0007"

    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    const-string v12, "\u0008"

    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 134
    const-string v12, "\u000b"

    invoke-interface {v0, v12, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 135
    const-string v13, "\u000c"

    invoke-interface {v0, v13, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 136
    const-string v14, "\u000e"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 137
    const-string v14, "\u000f"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 138
    const-string v14, "\u0010"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 139
    const-string v14, "\u0011"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 140
    const-string v14, "\u0012"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 141
    const-string v14, "\u0013"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 142
    const-string v14, "\u0014"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 143
    const-string v14, "\u0015"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 144
    const-string v14, "\u0016"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 145
    const-string v14, "\u0017"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 146
    const-string v14, "\u0018"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 147
    const-string v14, "\u0019"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 148
    const-string v14, "\u001a"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 149
    const-string v14, "\u001b"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 150
    const-string v14, "\u001c"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 151
    const-string v14, "\u001d"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 152
    const-string v14, "\u001e"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    const-string v14, "\u001f"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 154
    const-string v14, "\ufffe"

    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 155
    const-string v15, "\uffff"

    invoke-interface {v0, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 156
    new-instance v11, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;

    const/4 v10, 0x6

    new-array v9, v10, [Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v10, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    move-object/from16 v16, v5

    sget-object v5, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->BASIC_ESCAPE:Ljava/util/Map;

    invoke-direct {v10, v5}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v5, 0x0

    aput-object v10, v9, v5

    new-instance v5, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v10, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->APOS_ESCAPE:Ljava/util/Map;

    invoke-direct {v5, v10}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v10, 0x1

    aput-object v5, v9, v10

    new-instance v5, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    .line 159
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v10

    invoke-direct {v5, v10}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v10, 0x2

    aput-object v5, v9, v10

    .line 160
    const/16 v5, 0x84

    const/16 v10, 0x7f

    invoke-static {v10, v5}, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v5

    const/4 v10, 0x3

    aput-object v5, v9, v10

    .line 161
    const/16 v5, 0x86

    const/16 v10, 0x9f

    invoke-static {v5, v10}, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v5

    const/4 v10, 0x4

    aput-object v5, v9, v10

    new-instance v5, Lorg/checkerframework/org/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v5}, Lorg/checkerframework/org/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    const/16 v17, 0x5

    aput-object v5, v9, v17

    invoke-direct {v11, v9}, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v11, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_XML10:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 175
    .end local v0    # "escapeXml10Map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 176
    .local v0, "escapeXml11Map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 177
    const-string v5, "&#11;"

    invoke-interface {v0, v12, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 178
    const-string v5, "&#12;"

    invoke-interface {v0, v13, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 179
    invoke-interface {v0, v14, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 180
    invoke-interface {v0, v15, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 181
    new-instance v5, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;

    const/16 v6, 0x8

    new-array v6, v6, [Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v9, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v11, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->BASIC_ESCAPE:Ljava/util/Map;

    invoke-direct {v9, v11}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v11, 0x0

    aput-object v9, v6, v11

    new-instance v9, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v11, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->APOS_ESCAPE:Ljava/util/Map;

    invoke-direct {v9, v11}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v11, 0x1

    aput-object v9, v6, v11

    new-instance v9, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    .line 184
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v12

    invoke-direct {v9, v12}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v12, 0x2

    aput-object v9, v6, v12

    .line 185
    const/16 v9, 0x8

    invoke-static {v11, v9}, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v9

    const/4 v11, 0x3

    aput-object v9, v6, v11

    .line 186
    const/16 v9, 0xe

    const/16 v11, 0x1f

    invoke-static {v9, v11}, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v9

    aput-object v9, v6, v10

    .line 187
    const/16 v9, 0x84

    const/16 v11, 0x7f

    invoke-static {v11, v9}, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v9

    const/4 v11, 0x5

    aput-object v9, v6, v11

    .line 188
    const/16 v9, 0x86

    const/16 v11, 0x9f

    invoke-static {v9, v11}, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;->between(II)Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v9

    const/4 v11, 0x6

    aput-object v9, v6, v11

    new-instance v9, Lorg/checkerframework/org/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;

    invoke-direct {v9}, Lorg/checkerframework/org/apache/commons/text/translate/UnicodeUnpairedSurrogateRemover;-><init>()V

    const/4 v11, 0x7

    aput-object v9, v6, v11

    invoke-direct {v5, v6}, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v5, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_XML11:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 200
    .end local v0    # "escapeXml11Map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;

    const/4 v5, 0x2

    new-array v6, v5, [Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v5, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v9, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->BASIC_ESCAPE:Ljava/util/Map;

    invoke-direct {v5, v9}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v9, 0x0

    aput-object v5, v6, v9

    new-instance v5, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v9, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->ISO8859_1_ESCAPE:Ljava/util/Map;

    invoke-direct {v5, v9}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v9, 0x1

    aput-object v5, v6, v9

    invoke-direct {v0, v6}, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_HTML3:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 213
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;

    const/4 v5, 0x3

    new-array v6, v5, [Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v5, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v9, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->BASIC_ESCAPE:Ljava/util/Map;

    invoke-direct {v5, v9}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v9, 0x0

    aput-object v5, v6, v9

    new-instance v5, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v9, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->ISO8859_1_ESCAPE:Ljava/util/Map;

    invoke-direct {v5, v9}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v9, 0x1

    aput-object v5, v6, v9

    new-instance v5, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v9, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->HTML40_EXTENDED_ESCAPE:Ljava/util/Map;

    invoke-direct {v5, v9}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v9, 0x2

    aput-object v5, v6, v9

    invoke-direct {v0, v6}, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_HTML4:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 227
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/translate/CsvTranslators$CsvEscaper;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/translate/CsvTranslators$CsvEscaper;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_CSV:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 236
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 237
    .local v0, "escapeXsiMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    const-string v5, "|"

    const-string v6, "\\|"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 238
    const-string v5, "&"

    const-string v6, "\\&"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 239
    const-string v5, ";"

    const-string v6, "\\;"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 240
    const-string v5, "<"

    const-string v6, "\\<"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 241
    const-string v5, ">"

    const-string v6, "\\>"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 242
    const-string v5, "("

    const-string v6, "\\("

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 243
    const-string v5, ")"

    const-string v6, "\\)"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 244
    const-string v5, "$"

    const-string v6, "\\$"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 245
    const-string v5, "`"

    const-string v6, "\\`"

    invoke-interface {v0, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 246
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 247
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 248
    move-object/from16 v5, v16

    invoke-interface {v0, v5, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 249
    const-string v6, " "

    const-string v9, "\\ "

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 250
    const-string v6, "\t"

    const-string v9, "\\\t"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 251
    const-string v6, "\r\n"

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 252
    const-string v6, "\n"

    invoke-interface {v0, v6, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    const-string v6, "*"

    const-string v9, "\\*"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    const-string v6, "?"

    const-string v9, "\\?"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 255
    const-string v6, "["

    const-string v9, "\\["

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 256
    const-string v6, "#"

    const-string v9, "\\#"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 257
    const-string v6, "~"

    const-string v9, "\\~"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 258
    const-string v6, "="

    const-string v9, "\\="

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 259
    const-string v6, "%"

    const-string v9, "\\%"

    invoke-interface {v0, v6, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 260
    new-instance v6, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    .line 261
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v9

    invoke-direct {v6, v9}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    sput-object v6, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_XSI:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 276
    .end local v0    # "escapeXsiMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    .line 277
    .local v0, "unescapeJavaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    invoke-interface {v0, v4, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 278
    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 279
    invoke-interface {v0, v7, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 280
    invoke-interface {v0, v3, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 281
    new-instance v1, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;

    new-array v2, v10, [Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v3, Lorg/checkerframework/org/apache/commons/text/translate/OctalUnescaper;

    invoke-direct {v3}, Lorg/checkerframework/org/apache/commons/text/translate/OctalUnescaper;-><init>()V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    new-instance v3, Lorg/checkerframework/org/apache/commons/text/translate/UnicodeUnescaper;

    invoke-direct {v3}, Lorg/checkerframework/org/apache/commons/text/translate/UnicodeUnescaper;-><init>()V

    const/4 v4, 0x1

    aput-object v3, v2, v4

    new-instance v3, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v4, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->JAVA_CTRL_CHARS_UNESCAPE:Ljava/util/Map;

    invoke-direct {v3, v4}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x2

    aput-object v3, v2, v4

    new-instance v3, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    .line 285
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v4

    invoke-direct {v3, v4}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x3

    aput-object v3, v2, v4

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v1, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 296
    .end local v0    # "unescapeJavaMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/CharSequence;Ljava/lang/CharSequence;>;"
    sput-object v1, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 305
    sput-object v1, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->UNESCAPE_JSON:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 314
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;

    new-array v1, v4, [Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v3, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->BASIC_UNESCAPE:Ljava/util/Map;

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v4, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->ISO8859_1_UNESCAPE:Ljava/util/Map;

    invoke-direct {v2, v4}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper;

    new-array v4, v3, [Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v4}, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper;-><init>([Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 328
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;

    new-array v1, v10, [Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v4, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->BASIC_UNESCAPE:Ljava/util/Map;

    invoke-direct {v2, v4}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v4, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->ISO8859_1_UNESCAPE:Ljava/util/Map;

    invoke-direct {v2, v4}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v4, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->HTML40_EXTENDED_UNESCAPE:Ljava/util/Map;

    invoke-direct {v2, v4}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x2

    aput-object v2, v1, v4

    new-instance v2, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper;

    new-array v4, v3, [Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v4}, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper;-><init>([Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v4, 0x3

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 343
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;

    new-array v1, v4, [Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    new-instance v2, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v4, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->BASIC_UNESCAPE:Ljava/util/Map;

    invoke-direct {v2, v4}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    aput-object v2, v1, v3

    new-instance v2, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;

    sget-object v4, Lorg/checkerframework/org/apache/commons/text/translate/EntityArrays;->APOS_UNESCAPE:Ljava/util/Map;

    invoke-direct {v2, v4}, Lorg/checkerframework/org/apache/commons/text/translate/LookupTranslator;-><init>(Ljava/util/Map;)V

    const/4 v4, 0x1

    aput-object v2, v1, v4

    new-instance v2, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper;

    new-array v3, v3, [Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;

    invoke-direct {v2, v3}, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper;-><init>([Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityUnescaper$OPTION;)V

    const/4 v3, 0x2

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/translate/AggregateTranslator;-><init>([Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->UNESCAPE_XML:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 357
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/translate/CsvTranslators$CsvUnescaper;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/translate/CsvTranslators$CsvUnescaper;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->UNESCAPE_CSV:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 366
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$XsiUnescaper;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$XsiUnescaper;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->UNESCAPE_XSI:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 421
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 422
    return-void
.end method

.method public static builder(Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;)Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$Builder;
    .locals 2
    .param p0, "translator"    # Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    .line 500
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$Builder;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$Builder;-><init>(Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils$1;)V

    return-object v0
.end method

.method public static final escapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 808
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_CSV:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 559
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_ECMASCRIPT:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 670
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_HTML3:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 659
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_HTML4:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 526
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_JAVA:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 585
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_JSON:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final escapeXSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 853
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_XSI:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeXml10(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 733
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_XML10:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static escapeXml11(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 762
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->ESCAPE_XML11:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeCsv(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 832
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->UNESCAPE_CSV:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeEcmaScript(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 613
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->UNESCAPE_ECMASCRIPT:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeHtml3(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 702
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->UNESCAPE_HTML3:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeHtml4(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 690
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->UNESCAPE_HTML4:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeJava(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 598
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->UNESCAPE_JAVA:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeJson(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 628
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->UNESCAPE_JSON:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeXSI(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 864
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->UNESCAPE_XSI:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static final unescapeXml(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "input"    # Ljava/lang/String;

    .line 783
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StringEscapeUtils;->UNESCAPE_XML:Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;

    invoke-virtual {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/CharSequenceTranslator;->translate(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
