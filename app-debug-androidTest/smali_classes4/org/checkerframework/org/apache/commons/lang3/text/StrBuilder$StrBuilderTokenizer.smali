.class Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;
.super Lorg/checkerframework/org/apache/commons/lang3/text/StrTokenizer;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderTokenizer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    .line 2932
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    .line 2933
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/lang3/text/StrTokenizer;-><init>()V

    .line 2934
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 2

    .line 2948
    invoke-super {p0}, Lorg/checkerframework/org/apache/commons/lang3/text/StrTokenizer;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 2949
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2950
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2952
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

    .line 2939
    if-nez p1, :cond_0

    .line 2940
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    iget-object v0, v0, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/lang3/text/StrBuilder;->size()I

    move-result v1

    const/4 v2, 0x0

    invoke-super {p0, v0, v2, v1}, Lorg/checkerframework/org/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2942
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/lang3/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method