.class Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;
.super Ljava/io/Reader;
.source "TextStringBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderReader"
.end annotation


# instance fields
.field private mark:I

.field private pos:I

.field final synthetic this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 3089
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 3090
    invoke-direct {p0}, Ljava/io/Reader;-><init>()V

    .line 3091
    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    .line 3097
    return-void
.end method

.method public mark(I)V
    .locals 1
    .param p1, "readAheadLimit"    # I

    .line 3156
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->pos:I

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->mark:I

    .line 3157
    return-void
.end method

.method public markSupported()Z
    .locals 1

    .line 3150
    const/4 v0, 0x1

    return v0
.end method

.method public read()I
    .locals 3

    .line 3102
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->ready()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3103
    const/4 v0, -0x1

    return v0

    .line 3105
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->pos:I

    add-int/lit8 v2, v1, 0x1

    iput v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->pos:I

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->charAt(I)C

    move-result v0

    return v0
.end method

.method public read([CII)I
    .locals 3
    .param p1, "b"    # [C
    .param p2, "off"    # I
    .param p3, "len"    # I

    .line 3111
    if-ltz p2, :cond_3

    if-ltz p3, :cond_3

    array-length v0, p1

    if-gt p2, v0, :cond_3

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_3

    add-int v0, p2, p3

    if-ltz v0, :cond_3

    .line 3114
    if-nez p3, :cond_0

    .line 3115
    const/4 v0, 0x0

    return v0

    .line 3117
    :cond_0
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->pos:I

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size()I

    move-result v1

    if-lt v0, v1, :cond_1

    .line 3118
    const/4 v0, -0x1

    return v0

    .line 3120
    :cond_1
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->pos:I

    add-int/2addr v0, p3

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size()I

    move-result v1

    if-le v0, v1, :cond_2

    .line 3121
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size()I

    move-result v0

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->pos:I

    sub-int p3, v0, v1

    .line 3123
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->pos:I

    add-int v2, v1, p3

    invoke-virtual {v0, v1, v2, p1, p2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->getChars(II[CI)V

    .line 3124
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->pos:I

    add-int/2addr v0, p3

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->pos:I

    .line 3125
    return p3

    .line 3112
    :cond_3
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public ready()Z
    .locals 2

    .line 3144
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->pos:I

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public reset()V
    .locals 1

    .line 3162
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->mark:I

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->pos:I

    .line 3163
    return-void
.end method

.method public skip(J)J
    .locals 4
    .param p1, "n"    # J

    .line 3131
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    iget-object v2, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-virtual {v2}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size()I

    move-result v2

    int-to-long v2, v2

    cmp-long v0, v0, v2

    if-lez v0, :cond_0

    .line 3132
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size()I

    move-result v0

    iget v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->pos:I

    sub-int/2addr v0, v1

    int-to-long p1, v0

    .line 3134
    :cond_0
    const-wide/16 v0, 0x0

    cmp-long v2, p1, v0

    if-gez v2, :cond_1

    .line 3135
    return-wide v0

    .line 3137
    :cond_1
    iget v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->pos:I

    int-to-long v0, v0

    add-long/2addr v0, p1

    long-to-int v0, v0

    iput v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$StrBuilderReader;->pos:I

    .line 3138
    return-wide p1
.end method
