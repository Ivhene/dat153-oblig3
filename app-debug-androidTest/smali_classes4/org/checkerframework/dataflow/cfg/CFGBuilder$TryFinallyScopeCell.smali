.class public Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;
.super Ljava/lang/Object;
.source "CFGBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/dataflow/cfg/CFGBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "TryFinallyScopeCell"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private accessed:Z

.field private label:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 754
    const-class v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder;

    return-void
.end method

.method protected constructor <init>()V
    .locals 1

    .line 758
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 759
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->label:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 760
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->accessed:Z

    .line 761
    return-void
.end method

.method protected constructor <init>(Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;)V
    .locals 1
    .param p1, "label"    # Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 763
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 764
    if-eqz p1, :cond_0

    .line 765
    iput-object p1, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->label:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 766
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->accessed:Z

    .line 767
    return-void

    .line 764
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method


# virtual methods
.method public accessLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .locals 1

    .line 770
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->label:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    if-nez v0, :cond_0

    .line 771
    new-instance v0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    invoke-direct {v0}, Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->label:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    .line 773
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->accessed:Z

    .line 774
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->label:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    return-object v0
.end method

.method public peekLabel()Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;
    .locals 1

    .line 778
    iget-object v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->label:Lorg/checkerframework/dataflow/cfg/CFGBuilder$Label;

    if-eqz v0, :cond_0

    .line 779
    return-object v0

    .line 778
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public wasAccessed()Z
    .locals 1

    .line 783
    iget-boolean v0, p0, Lorg/checkerframework/dataflow/cfg/CFGBuilder$TryFinallyScopeCell;->accessed:Z

    return v0
.end method
