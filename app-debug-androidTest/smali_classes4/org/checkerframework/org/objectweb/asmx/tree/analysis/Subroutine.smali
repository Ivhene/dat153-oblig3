.class Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
.super Ljava/lang/Object;
.source "Subroutine.java"


# instance fields
.field access:[Z

.field callers:Ljava/util/List;

.field start:Lorg/checkerframework/org/objectweb/asmx/Label;


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 52
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/objectweb/asmx/Label;ILorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;)V
    .locals 1
    .param p1, "start"    # Lorg/checkerframework/org/objectweb/asmx/Label;
    .param p2, "maxLocals"    # I
    .param p3, "caller"    # Lorg/checkerframework/org/objectweb/asmx/tree/JumpInsnNode;

    .line 58
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->start:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 60
    new-array v0, p2, [Z

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->access:[Z

    .line 61
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->callers:Ljava/util/List;

    .line 62
    invoke-interface {v0, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    return-void
.end method


# virtual methods
.method public copy()Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    .locals 5

    .line 66
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;

    invoke-direct {v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;-><init>()V

    .line 67
    .local v0, "result":Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->start:Lorg/checkerframework/org/objectweb/asmx/Label;

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->start:Lorg/checkerframework/org/objectweb/asmx/Label;

    .line 68
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->access:[Z

    array-length v1, v1

    new-array v1, v1, [Z

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->access:[Z

    .line 69
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->access:[Z

    const/4 v3, 0x0

    array-length v4, v2

    invoke-static {v2, v3, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 70
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->callers:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->callers:Ljava/util/List;

    .line 71
    return-object v0
.end method

.method public merge(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;Z)Z
    .locals 4
    .param p1, "subroutine"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;
    .param p2, "checkOverlap"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;
        }
    .end annotation

    .line 77
    if-eqz p2, :cond_1

    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->start:Lorg/checkerframework/org/objectweb/asmx/Label;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->start:Lorg/checkerframework/org/objectweb/asmx/Label;

    if-ne v0, v1, :cond_0

    goto :goto_0

    .line 78
    :cond_0
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;

    const-string v1, "Overlapping sub routines"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/AnalyzerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 80
    :cond_1
    :goto_0
    const/4 v0, 0x0

    .line 81
    .local v0, "changes":Z
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->access:[Z

    array-length v3, v2

    if-ge v1, v3, :cond_3

    .line 82
    iget-object v3, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->access:[Z

    aget-boolean v3, v3, v1

    if-eqz v3, :cond_2

    aget-boolean v3, v2, v1

    if-nez v3, :cond_2

    .line 83
    const/4 v3, 0x1

    aput-boolean v3, v2, v1

    .line 84
    const/4 v0, 0x1

    .line 81
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 87
    .end local v1    # "i":I
    :cond_3
    const/4 v1, 0x0

    .restart local v1    # "i":I
    :goto_2
    iget-object v2, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->callers:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v1, v2, :cond_5

    .line 88
    iget-object v2, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->callers:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    .line 89
    .local v2, "caller":Ljava/lang/Object;
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->callers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    .line 90
    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/Subroutine;->callers:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 91
    const/4 v0, 0x1

    .line 87
    .end local v2    # "caller":Ljava/lang/Object;
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 94
    .end local v1    # "i":I
    :cond_5
    return v0
.end method
