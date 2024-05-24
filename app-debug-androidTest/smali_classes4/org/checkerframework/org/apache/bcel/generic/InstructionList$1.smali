.class Lorg/checkerframework/org/apache/bcel/generic/InstructionList$1;
.super Ljava/lang/Object;
.source "InstructionList.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;",
        ">;"
    }
.end annotation


# instance fields
.field private ih:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

.field final synthetic this$0:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;


# direct methods
.method constructor <init>(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    .line 995
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList$1;->this$0:Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 997
    invoke-static {p1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->access$000(Lorg/checkerframework/org/apache/bcel/generic/InstructionList;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList$1;->ih:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 1016
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList$1;->ih:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public bridge synthetic next()Ljava/lang/Object;
    .locals 1

    .line 995
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList$1;->next()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    return-object v0
.end method

.method public next()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/util/NoSuchElementException;
        }
    .end annotation

    .line 1001
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList$1;->ih:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    if-eqz v0, :cond_0

    .line 1004
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList$1;->ih:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 1005
    .local v1, "i":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;->getNext()Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList$1;->ih:Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 1006
    return-object v1

    .line 1002
    .end local v1    # "i":Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;
    :cond_0
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 1011
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
