.class public abstract Lorg/checkerframework/org/apache/commons/text/StrMatcher;
.super Ljava/lang/Object;
.source "StrMatcher.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/org/apache/commons/text/StrMatcher$TrimMatcher;,
        Lorg/checkerframework/org/apache/commons/text/StrMatcher$NoMatcher;,
        Lorg/checkerframework/org/apache/commons/text/StrMatcher$StringMatcher;,
        Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;,
        Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharSetMatcher;
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final COMMA_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

.field private static final DOUBLE_QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

.field private static final NONE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

.field private static final QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

.field private static final SINGLE_QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

.field private static final SPACE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

.field private static final SPLIT_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

.field private static final TAB_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

.field private static final TRIM_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 39
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;

    const/16 v1, 0x2c

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->COMMA_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 44
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->TAB_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 49
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;

    const/16 v1, 0x20

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->SPACE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 55
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharSetMatcher;

    const-string v1, " \t\n\r\u000c"

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->SPLIT_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 60
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher$TrimMatcher;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/StrMatcher$TrimMatcher;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->TRIM_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 65
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;

    const/16 v1, 0x27

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->SINGLE_QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 70
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;

    const/16 v1, 0x22

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 75
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharSetMatcher;

    const-string v1, "\'\""

    invoke-virtual {v1}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharSetMatcher;-><init>([C)V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    .line 80
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher$NoMatcher;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/commons/text/StrMatcher$NoMatcher;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->NONE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-void
.end method

.method protected constructor <init>()V
    .locals 0

    .line 226
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 227
    return-void
.end method

.method public static charMatcher(C)Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1
    .param p0, "ch"    # C

    .line 173
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0
.end method

.method public static charSetMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 2
    .param p0, "chars"    # Ljava/lang/String;

    .line 199
    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 202
    :cond_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 203
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0

    .line 205
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharSetMatcher;

    invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharSetMatcher;-><init>([C)V

    return-object v0

    .line 200
    :cond_2
    :goto_0
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->NONE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static varargs charSetMatcher([C)Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 2
    .param p0, "chars"    # [C

    .line 183
    if-eqz p0, :cond_2

    array-length v0, p0

    if-nez v0, :cond_0

    goto :goto_0

    .line 186
    :cond_0
    array-length v0, p0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_1

    .line 187
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;

    const/4 v1, 0x0

    aget-char v1, p0, v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharMatcher;-><init>(C)V

    return-object v0

    .line 189
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharSetMatcher;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StrMatcher$CharSetMatcher;-><init>([C)V

    return-object v0

    .line 184
    :cond_2
    :goto_0
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->NONE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static commaMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1

    .line 90
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->COMMA_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static doubleQuoteMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1

    .line 145
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->DOUBLE_QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static noneMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1

    .line 163
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->NONE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static quoteMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1

    .line 154
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static singleQuoteMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1

    .line 136
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->SINGLE_QUOTE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static spaceMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1

    .line 108
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->SPACE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static splitMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1

    .line 118
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->SPLIT_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static stringMatcher(Ljava/lang/String;)Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1
    .param p0, "str"    # Ljava/lang/String;

    .line 215
    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 218
    :cond_0
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher$StringMatcher;

    invoke-direct {v0, p0}, Lorg/checkerframework/org/apache/commons/text/StrMatcher$StringMatcher;-><init>(Ljava/lang/String;)V

    return-object v0

    .line 216
    :cond_1
    :goto_0
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->NONE_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static tabMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1

    .line 99
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->TAB_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method

.method public static trimMatcher()Lorg/checkerframework/org/apache/commons/text/StrMatcher;
    .locals 1

    .line 127
    sget-object v0, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->TRIM_MATCHER:Lorg/checkerframework/org/apache/commons/text/StrMatcher;

    return-object v0
.end method


# virtual methods
.method public isMatch([CI)I
    .locals 2
    .param p1, "buffer"    # [C
    .param p2, "pos"    # I

    .line 276
    const/4 v0, 0x0

    array-length v1, p1

    invoke-virtual {p0, p1, p2, v0, v1}, Lorg/checkerframework/org/apache/commons/text/StrMatcher;->isMatch([CIII)I

    move-result v0

    return v0
.end method

.method public abstract isMatch([CIII)I
.end method
