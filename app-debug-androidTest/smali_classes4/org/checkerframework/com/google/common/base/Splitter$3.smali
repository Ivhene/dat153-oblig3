.class final Lorg/checkerframework/com/google/common/base/Splitter$3;
.super Ljava/lang/Object;
.source "Splitter.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Splitter$Strategy;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/base/Splitter;->on(Lorg/checkerframework/com/google/common/base/CommonPattern;)Lorg/checkerframework/com/google/common/base/Splitter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$separatorPattern:Lorg/checkerframework/com/google/common/base/CommonPattern;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/CommonPattern;)V
    .locals 0

    .line 225
    iput-object p1, p0, Lorg/checkerframework/com/google/common/base/Splitter$3;->val$separatorPattern:Lorg/checkerframework/com/google/common/base/CommonPattern;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic iterator(Lorg/checkerframework/com/google/common/base/Splitter;Ljava/lang/CharSequence;)Ljava/util/Iterator;
    .locals 0

    .line 225
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/google/common/base/Splitter$3;->iterator(Lorg/checkerframework/com/google/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/base/Splitter$SplittingIterator;

    move-result-object p1

    return-object p1
.end method

.method public iterator(Lorg/checkerframework/com/google/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/base/Splitter$SplittingIterator;
    .locals 2
    .param p1, "splitter"    # Lorg/checkerframework/com/google/common/base/Splitter;
    .param p2, "toSplit"    # Ljava/lang/CharSequence;

    .line 228
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Splitter$3;->val$separatorPattern:Lorg/checkerframework/com/google/common/base/CommonPattern;

    invoke-virtual {v0, p2}, Lorg/checkerframework/com/google/common/base/CommonPattern;->matcher(Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/base/CommonMatcher;

    move-result-object v0

    .line 229
    .local v0, "matcher":Lorg/checkerframework/com/google/common/base/CommonMatcher;
    new-instance v1, Lorg/checkerframework/com/google/common/base/Splitter$3$1;

    invoke-direct {v1, p0, p1, p2, v0}, Lorg/checkerframework/com/google/common/base/Splitter$3$1;-><init>(Lorg/checkerframework/com/google/common/base/Splitter$3;Lorg/checkerframework/com/google/common/base/Splitter;Ljava/lang/CharSequence;Lorg/checkerframework/com/google/common/base/CommonMatcher;)V

    return-object v1
.end method
