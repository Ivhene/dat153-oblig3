.class final Lorg/checkerframework/com/google/common/base/Splitter$2;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/base/Splitter;->on(Ljava/lang/String;)Lorg/checkerframework/com/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$separator:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/lang/String;)V
    .locals 0

    .line 174
    iput-object p1, p0, Lorg/checkerframework/com/google/common/base/Splitter$2;->val$separator:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator(Lorg/checkerframework/com/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 174
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/base/Splitter$2;->iterator(Lorg/checkerframework/com/google/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/base/Splitter$SplittingIterator;

    move-result-object p1

    return-object p1
.end method

.method public iterator(Lorg/checkerframework/com/google/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/base/Splitter$SplittingIterator;
    .locals 1
    .param p1, "splitter"    # Lorg/checkerframework/com/google/common/base/Splitter;
    .param p2, "toSplit"    # Ljava/lang/CharSequence;

    .line 177
    new-instance v0, Lorg/checkerframework/com/google/common/base/Splitter$2$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/com/google/common/base/Splitter$2$1;-><init>(Lorg/checkerframework/com/google/common/base/Splitter$2;Lorg/checkerframework/com/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method
