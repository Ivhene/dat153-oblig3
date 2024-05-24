.class public Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;
.super Lorg/checkerframework/org/apache/commons/text/translate/CodePointTranslator;
.source "NumericEntityEscaper.java"


# instance fields
.field private final between:Z

.field private final range:Lorg/checkerframework/org/apache/commons/lang3/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/org/apache/commons/lang3/Range<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 54
    const v0, 0x7fffffff

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v2, v0, v1}, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    .line 55
    return-void
.end method

.method private constructor <init>(IIZ)V
    .locals 2
    .param p1, "below"    # I
    .param p2, "above"    # I
    .param p3, "between"    # Z

    .line 45
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/translate/CodePointTranslator;-><init>()V

    .line 46
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/org/apache/commons/lang3/Range;->between(Ljava/lang/Comparable;Ljava/lang/Comparable;)Lorg/checkerframework/org/apache/commons/lang3/Range;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;->range:Lorg/checkerframework/org/apache/commons/lang3/Range;

    .line 47
    iput-boolean p3, p0, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;->between:Z

    .line 48
    return-void
.end method

.method public static above(I)Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;
    .locals 1
    .param p0, "codepoint"    # I

    .line 74
    const/4 v0, 0x0

    invoke-static {v0, p0}, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;->outsideOf(II)Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static below(I)Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;
    .locals 1
    .param p0, "codepoint"    # I

    .line 64
    const v0, 0x7fffffff

    invoke-static {p0, v0}, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;->outsideOf(II)Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;

    move-result-object v0

    return-object v0
.end method

.method public static between(II)Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;
    .locals 2
    .param p0, "codepointLow"    # I
    .param p1, "codepointHigh"    # I

    .line 85
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;

    const/4 v1, 0x1

    invoke-direct {v0, p0, p1, v1}, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method

.method public static outsideOf(II)Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;
    .locals 2
    .param p0, "codepointLow"    # I
    .param p1, "codepointHigh"    # I

    .line 96
    new-instance v0, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;-><init>(IIZ)V

    return-object v0
.end method


# virtual methods
.method public translate(ILjava/io/Writer;)Z
    .locals 3
    .param p1, "codepoint"    # I
    .param p2, "out"    # Ljava/io/Writer;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 104
    iget-boolean v0, p0, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;->between:Z

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/translate/NumericEntityEscaper;->range:Lorg/checkerframework/org/apache/commons/lang3/Range;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/commons/lang3/Range;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eq v0, v1, :cond_0

    .line 105
    const/4 v0, 0x0

    return v0

    .line 107
    :cond_0
    const-string v0, "&#"

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 108
    const/16 v0, 0xa

    invoke-static {p1, v0}, Ljava/lang/Integer;->toString(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(Ljava/lang/String;)V

    .line 109
    const/16 v0, 0x3b

    invoke-virtual {p2, v0}, Ljava/io/Writer;->write(I)V

    .line 110
    const/4 v0, 0x1

    return v0
.end method
