.class Lorg/checkerframework/com/google/common/base/Splitter$1$1;
.super Lorg/checkerframework/com/google/common/base/Splitter$SplittingIterator;
.source "Splitter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/base/Splitter$1;->iterator(Lorg/checkerframework/com/google/common/base/Splitter;Ljava/lang/CharSequence;)Lorg/checkerframework/com/google/common/base/Splitter$SplittingIterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/base/Splitter$1;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/Splitter$1;Lorg/checkerframework/com/google/common/base/Splitter;Ljava/lang/CharSequence;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/base/Splitter$1;
    .param p2, "splitter"    # Lorg/checkerframework/com/google/common/base/Splitter;
    .param p3, "toSplit"    # Ljava/lang/CharSequence;

    .line 145
    iput-object p1, p0, Lorg/checkerframework/com/google/common/base/Splitter$1$1;->this$0:Lorg/checkerframework/com/google/common/base/Splitter$1;

    invoke-direct {p0, p2, p3}, Lorg/checkerframework/com/google/common/base/Splitter$SplittingIterator;-><init>(Lorg/checkerframework/com/google/common/base/Splitter;Ljava/lang/CharSequence;)V

    return-void
.end method


# virtual methods
.method separatorEnd(I)I
    .locals 1
    .param p1, "separatorPosition"    # I

    .line 153
    add-int/lit8 v0, p1, 0x1

    return v0
.end method

.method separatorStart(I)I
    .locals 2
    .param p1, "start"    # I

    .line 148
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Splitter$1$1;->this$0:Lorg/checkerframework/com/google/common/base/Splitter$1;

    iget-object v0, v0, Lorg/checkerframework/com/google/common/base/Splitter$1;->val$separatorMatcher:Lorg/checkerframework/com/google/common/base/CharMatcher;

    iget-object v1, p0, Lorg/checkerframework/com/google/common/base/Splitter$1$1;->toSplit:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->indexIn(Ljava/lang/CharSequence;I)I

    move-result v0

    return v0
.end method
