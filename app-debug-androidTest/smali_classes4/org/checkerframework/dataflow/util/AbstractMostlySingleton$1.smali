.class Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;
.super Ljava/lang/Object;
.source "AbstractMostlySingleton.java"

# interfaces
.implements Ljava/util/Iterator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Iterator<",
        "TT;>;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private hasNext:Z

.field final synthetic this$0:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 70
    const-class v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;

    return-void
.end method

.method constructor <init>(Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;)V
    .locals 1
    .param p1, "this$0"    # Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;

    .line 70
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;"
    iput-object p1, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;->this$0:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;->hasNext:Z

    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 75
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;"
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;->hasNext:Z

    return v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 80
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;"
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;->hasNext:Z

    if-eqz v0, :cond_1

    .line 81
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;->hasNext:Z

    .line 82
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;->this$0:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;

    iget-object v0, v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->value:Ljava/lang/Object;

    if-eqz v0, :cond_0

    .line 84
    iget-object v0, p0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;->this$0:Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;

    iget-object v0, v0, Lorg/checkerframework/dataflow/util/AbstractMostlySingleton;->value:Ljava/lang/Object;

    return-object v0

    .line 82
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "@AssumeAssertion(nullness): previous add is non-null"

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    .line 86
    :cond_1
    new-instance v0, Ljava/util/NoSuchElementException;

    invoke-direct {v0}, Ljava/util/NoSuchElementException;-><init>()V

    throw v0
.end method

.method public remove()V
    .locals 1

    .line 91
    .local p0, "this":Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;, "Lorg/checkerframework/dataflow/util/AbstractMostlySingleton$1;"
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method
