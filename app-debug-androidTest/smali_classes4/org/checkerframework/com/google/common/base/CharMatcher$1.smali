.class Lorg/checkerframework/com/google/common/base/CharMatcher$1;
.super Lorg/checkerframework/com/google/common/base/CharMatcher$NegatedFastMatcher;
.source "CharMatcher.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/base/CharMatcher;->precomputedInternal()Lorg/checkerframework/com/google/common/base/CharMatcher;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/base/CharMatcher;

.field final synthetic val$description:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/CharMatcher;Lorg/checkerframework/com/google/common/base/CharMatcher;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/base/CharMatcher;
    .param p2, "original"    # Lorg/checkerframework/com/google/common/base/CharMatcher;

    .line 432
    iput-object p1, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$1;->this$0:Lorg/checkerframework/com/google/common/base/CharMatcher;

    iput-object p3, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$1;->val$description:Ljava/lang/String;

    invoke-direct {p0, p2}, Lorg/checkerframework/com/google/common/base/CharMatcher$NegatedFastMatcher;-><init>(Lorg/checkerframework/com/google/common/base/CharMatcher;)V

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 1

    .line 435
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/CharMatcher$1;->val$description:Ljava/lang/String;

    return-object v0
.end method
