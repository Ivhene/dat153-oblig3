.class public final Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;
.super Ljava/lang/Object;
.source "StringMatcherFactory.java"


# static fields
.field private static final COMMA_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

.field private static final DOUBLE_QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

.field public static final INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

.field private static final NONE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$NoMatcher;

.field private static final QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;

.field private static final SINGLE_QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

.field private static final SPACE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

.field private static final SPLIT_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;

.field private static final TAB_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

.field private static final TRIM_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$TrimMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 30
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->INSTANCE:Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;

    .line 35
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;

    .line 36
    const-string v1, " \t\n\r\u000c"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->SPLIT_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;

    .line 41
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->COMMA_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    .line 46
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->TAB_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    .line 51
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->SPACE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    .line 56
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$TrimMatcher;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$TrimMatcher;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->TRIM_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$TrimMatcher;

    .line 61
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->SINGLE_QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    .line 67
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->DOUBLE_QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    .line 73
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;

    .line 74
    const-string v1, "\'\""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;

    .line 79
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$NoMatcher;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$NoMatcher;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->NONE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$NoMatcher;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 84
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 86
    return-void
.end method


# virtual methods
.method public charMatcher(C)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1
    .param p1, "ch"    # C

    .line 96
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;-><init>(C)V

    return-object v0
.end method

.method public charSetMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 2
    .param p1, "chars"    # Ljava/lang/String;

    .line 124
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 127
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 128
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    const/4 v1, 0x0

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;-><init>(C)V

    return-object v0

    .line 130
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;

    invoke-virtual {p1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;-><init>([C)V

    return-object v0

    .line 125
    :cond_2
    :goto_0
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->NONE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$NoMatcher;

    return-object v0
.end method

.method public varargs charSetMatcher([C)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 2
    .param p1, "chars"    # [C

    .line 107
    if-eqz p1, :cond_2

    array-length v0, p1

    if-nez v0, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    array-length v0, p1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 111
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    const/4 v1, 0x0

    aget-char v1, p1, v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;-><init>(C)V

    return-object v0

    .line 113
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;-><init>([C)V

    return-object v0

    .line 108
    :cond_2
    :goto_0
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->NONE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$NoMatcher;

    return-object v0
.end method

.method public commaMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 139
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->COMMA_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    return-object v0
.end method

.method public doubleQuoteMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 148
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->DOUBLE_QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    return-object v0
.end method

.method public noneMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 157
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->NONE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$NoMatcher;

    return-object v0
.end method

.method public quoteMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 166
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;

    return-object v0
.end method

.method public singleQuoteMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 175
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->SINGLE_QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    return-object v0
.end method

.method public spaceMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 184
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->SPACE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    return-object v0
.end method

.method public splitMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 193
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->SPLIT_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharSetMatcher;

    return-object v0
.end method

.method public stringMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1
    .param p1, "str"    # Ljava/lang/String;

    .line 204
    if-eqz p1, :cond_1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 207
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$StringMatcher;

    invoke-direct {v0, p1}, Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$StringMatcher;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 205
    :cond_1
    :goto_0
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->NONE_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$NoMatcher;

    return-object v0
.end method

.method public tabMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 216
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->TAB_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$CharMatcher;

    return-object v0
.end method

.method public trimMatcher()Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcher;
    .locals 1

    .line 225
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/matcher/StringMatcherFactory;->TRIM_MATCHER:Lorg/checkerframework/org/apache/commons/text/matcher/AbstractStringMatcher$TrimMatcher;

    return-object v0
.end method
