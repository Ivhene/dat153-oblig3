.class Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource$1;
.super Lorg/checkerframework/com/google/common/collect/AbstractIterator;
.source "CharSource.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource;->linesIterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/google/common/collect/AbstractIterator<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field lines:Ljava/util/Iterator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource;)V
    .locals 2
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource;

    .line 562
    iput-object p1, p0, Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource$1;->this$0:Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource;

    invoke-direct {p0}, Lorg/checkerframework/com/google/common/collect/AbstractIterator;-><init>()V

    .line 563
    invoke-static {}, Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource;->access$100()Lorg/checkerframework/com/google/common/base/Splitter;

    move-result-object v0

    iget-object v1, p1, Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource;->seq:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/google/common/base/Splitter;->split(Ljava/lang/CharSequence;)Ljava/lang/Iterable;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource$1;->lines:Ljava/util/Iterator;

    return-void
.end method


# virtual methods
.method protected bridge synthetic computeNext()Ljava/lang/Object;
    .locals 1

    .line 562
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource$1;->computeNext()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected computeNext()Ljava/lang/String;
    .locals 2

    .line 567
    iget-object v0, p0, Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource$1;->lines:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource$1;->lines:Ljava/util/Iterator;

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 570
    .local v0, "next":Ljava/lang/String;
    iget-object v1, p0, Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource$1;->lines:Ljava/util/Iterator;

    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 571
    :cond_0
    return-object v0

    .line 574
    .end local v0    # "next":Ljava/lang/String;
    :cond_1
    invoke-virtual {p0}, Lorg/checkerframework/com/google/common/io/CharSource$CharSequenceCharSource$1;->endOfData()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method
