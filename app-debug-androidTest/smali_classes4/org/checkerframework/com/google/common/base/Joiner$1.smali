.class Lorg/checkerframework/com/google/common/base/Joiner$1;
.super Lorg/checkerframework/com/google/common/base/Joiner;
.source "Joiner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/com/google/common/base/Joiner;->useForNull(Ljava/lang/String;)Lorg/checkerframework/com/google/common/base/Joiner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/checkerframework/com/google/common/base/Joiner;

.field final synthetic val$nullText:Ljava/lang/String;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/google/common/base/Joiner;Lorg/checkerframework/com/google/common/base/Joiner;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lorg/checkerframework/com/google/common/base/Joiner;
    .param p2, "prototype"    # Lorg/checkerframework/com/google/common/base/Joiner;

    .line 220
    iput-object p1, p0, Lorg/checkerframework/com/google/common/base/Joiner$1;->this$0:Lorg/checkerframework/com/google/common/base/Joiner;

    iput-object p3, p0, Lorg/checkerframework/com/google/common/base/Joiner$1;->val$nullText:Ljava/lang/String;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3}, Lorg/checkerframework/com/google/common/base/Joiner;-><init>(Lorg/checkerframework/com/google/common/base/Joiner;Lorg/checkerframework/com/google/common/base/Joiner$1;)V

    return-void
.end method


# virtual methods
.method public skipNulls()Lorg/checkerframework/com/google/common/base/Joiner;
    .locals 2

    .line 233
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method toString(Ljava/lang/Object;)Ljava/lang/CharSequence;
    .locals 1
    .param p1, "part"    # Ljava/lang/Object;

    .line 223
    if-nez p1, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Joiner$1;->val$nullText:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/google/common/base/Joiner$1;->this$0:Lorg/checkerframework/com/google/common/base/Joiner;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/google/common/base/Joiner;->toString(Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public useForNull(Ljava/lang/String;)Lorg/checkerframework/com/google/common/base/Joiner;
    .locals 2
    .param p1, "nullText"    # Ljava/lang/String;

    .line 228
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string v1, "already specified useForNull"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
