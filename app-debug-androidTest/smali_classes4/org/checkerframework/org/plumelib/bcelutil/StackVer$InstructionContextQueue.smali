.class final Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;
.super Ljava/lang/Object;
.source "StackVer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/org/plumelib/bcelutil/StackVer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "InstructionContextQueue"
.end annotation


# instance fields
.field private final ecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/util/ArrayList<",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;",
            ">;>;"
        }
    .end annotation
.end field

.field private final ics:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 91
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->ics:Ljava/util/List;

    .line 93
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->ecs:Ljava/util/List;

    return-void
.end method

.method synthetic constructor <init>(Lorg/checkerframework/org/plumelib/bcelutil/StackVer$1;)V
    .locals 0
    .param p1, "x0"    # Lorg/checkerframework/org/plumelib/bcelutil/StackVer$1;

    .line 88
    invoke-direct {p0}, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;-><init>()V

    return-void
.end method


# virtual methods
.method public add(Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;Ljava/util/ArrayList;)V
    .locals 1
    .param p1, "ic"    # Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;",
            "Ljava/util/ArrayList<",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;",
            ">;)V"
        }
    .end annotation

    .line 102
    .local p2, "executionChain":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;>;"
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->ics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 103
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->ecs:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 104
    return-void
.end method

.method public getEC(I)Ljava/util/ArrayList;
    .locals 1
    .param p1, "i"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList<",
            "Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;",
            ">;"
        }
    .end annotation

    .line 141
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->ecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    return-object v0
.end method

.method public getIC(I)Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;
    .locals 1
    .param p1, "i"    # I

    .line 131
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->ics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/verifier/structurals/InstructionContext;

    return-object v0
.end method

.method public isEmpty()Z
    .locals 1

    .line 111
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->ics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    return v0
.end method

.method public remove(I)V
    .locals 1
    .param p1, "i"    # I

    .line 120
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->ics:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 121
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->ecs:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 122
    return-void
.end method

.method public size()I
    .locals 1

    .line 150
    iget-object v0, p0, Lorg/checkerframework/org/plumelib/bcelutil/StackVer$InstructionContextQueue;->ics:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
