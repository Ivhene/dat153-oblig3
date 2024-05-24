.class Lorg/checkerframework/org/apache/commons/text/StrBuilder$StrBuilderTokenizer;
.super Lorg/checkerframework/org/apache/commons/text/StrTokenizer;
.source "StrBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/apache/commons/text/StrBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StrBuilderTokenizer"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/org/apache/commons/text/StrBuilder;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/commons/text/StrBuilder;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 2890
    iput-object p1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 2891
    invoke-direct {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;-><init>()V

    .line 2892
    return-void
.end method


# virtual methods
.method public getContent()Ljava/lang/String;
    .locals 2

    .line 2907
    invoke-super {p0}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->getContent()Ljava/lang/String;

    move-result-object v0

    .line 2908
    .local v0, "str":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 2909
    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1

    .line 2911
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

    .line 2897
    if-nez p1, :cond_0

    .line 2898
    iget-object v0, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    iget-object v0, v0, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->buffer:[C

    iget-object v1, p0, Lorg/checkerframework/org/apache/commons/text/StrBuilder$StrBuilderTokenizer;->this$0:Lorg/checkerframework/org/apache/commons/text/StrBuilder;

    .line 2899
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/commons/text/StrBuilder;->size()I

    move-result v1

    .line 2898
    const/4 v2, 0x0

    invoke-super {p0, v0, v2, v1}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    return-object v0

    .line 2901
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/checkerframework/org/apache/commons/text/StrTokenizer;->tokenize([CII)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
