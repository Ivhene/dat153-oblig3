.class Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$TextStringBuilderTokenizer;
.super Lorg/checkerframework/org/apache/commons/text/StringTokenizer;
.source "TextStringBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TextStringBuilderTokenizer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 3052
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$TextStringBuilderTokenizer;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    .line 3053
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;-><init>()V

    .line 3054
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 2

    .line 3068
    invoke-super {p0}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 3069
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 3070
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$TextStringBuilderTokenizer;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 3072
    :cond_0
    return-object v0
.end method

.method protected tokenize([CII)Ljava/util/List;
    .locals 3
    .param p1, "chars"    # [C
    .param p2, "offset"    # I
    .param p3, "count"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([CII)",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 3059
    if-nez p1, :cond_0

    .line 3060
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$TextStringBuilderTokenizer;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    iget-object v0, v0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->buffer:[C

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder$TextStringBuilderTokenizer;->this$0:Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/TextStringBuilder;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-super {p0, v0, v2, v1}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 3062
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StringTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
