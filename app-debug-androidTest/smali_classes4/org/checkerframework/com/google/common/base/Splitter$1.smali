.class final Lorg/checkerframework/com/google/common/base/Splitter$1;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/base/Splitter;->on(Lorg/checkerframework/com/google/common/base/CharMatcher;)Lorg/checkerframework/com/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$separatorMatcher:Lorg/checkerframework/com/google/common/base/CharMatcher;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/CharMatcher;)V
    .locals 0

    .line 142
    iput-object p1, p0, Lorg/checkerframework/com/google/common/base/Splitter$1;->val$separatorMatcher:Lorg/checkerframework/com/google/common/base/CharMatcher;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator(Lorg/checkerframework/com/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 142
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/base/Splitter$1;->iterator(Lorg/checkerframework/com/google/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/base/Splitter$SplittingIterator;

    move-result-object p1

    return-object p1
.end method

.method public iterator(Lorg/checkerframework/com/google/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/base/Splitter$SplittingIterator;
    .locals 1
    .param p1, "splitter"    # Lorg/checkerframework/com/google/common/base/Splitter;
    .param p2, "toSplit"    # Ljava/lang/CharSequence;

    .line 145
    new-instance v0, Lorg/checkerframework/com/google/common/base/Splitter$1$1;

    invoke-direct {v0, p0, p1, p2}, Lorg/checkerframework/com/google/common/base/Splitter$1$1;-><init>(Lorg/checkerframework/com/google/common/base/Splitter$1;Lorg/checkerframework/com/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-object v0
.end method
