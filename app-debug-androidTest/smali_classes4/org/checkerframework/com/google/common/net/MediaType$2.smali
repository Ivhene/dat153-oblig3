.class Lorg/checkerframework/com/google/common/net/MediaType$2;
.super Ljava/lang/Object;
.source "MediaType.java"

# interfaces
.implements Lorg/checkerframework/com/google/common/base/Function;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/net/MediaType;->computeToString()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/google/common/base/Function<",
        "Ljava/lang/String;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/net/MediaType;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/net/MediaType;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/net/MediaType;

    .line 1088
    iput-object p1, p0, Lorg/checkerframework/com/google/common/net/MediaType$2;->this$0:Lorg/checkerframework/com/google/common/net/MediaType;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1088
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lorg/checkerframework/com/google/common/net/MediaType$2;->apply(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public apply(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .line 1091
    invoke-static {}, Lorg/checkerframework/com/google/common/net/MediaType;->access$000()Lorg/checkerframework/com/google/common/base/CharMatcher;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/base/CharMatcher;->matchesAllOf(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    move-object v0, p1

    goto :goto_0

    :cond_0
    invoke-static {p1}, Lorg/checkerframework/com/google/common/net/MediaType;->access$100(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method
