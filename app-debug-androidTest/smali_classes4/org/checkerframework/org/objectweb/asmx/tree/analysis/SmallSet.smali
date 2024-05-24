.class Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;
.super Ljava/util/AbstractSet;
.source "SmallSet.java"

# interfaces
.implements Ljava/util/Iterator;


# static fields
.field static final EMPTY_SET:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;


# instance fields
.field e1:Ljava/lang/Object;

.field e2:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 48
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    sput-object v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->EMPTY_SET:Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;

    return-void
.end method

.method constructor <init>(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0
    .param p1, "e1"    # Ljava/lang/Object;
    .param p2, "e2"    # Ljava/lang/Object;

    .line 50
    invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V

    .line 51
    iput-object p1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    .line 52
    iput-object p2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    .line 53
    return-void
.end method


# virtual methods
.method public hasNext()Z
    .locals 1

    .line 72
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 3

    .line 60
    new-instance v0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v0
.end method

.method public next()Ljava/lang/Object;
    .locals 2

    .line 76
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    .line 77
    .local v0, "e":Ljava/lang/Object;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    .line 78
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    .line 79
    return-object v0
.end method

.method public remove()V
    .locals 0

    .line 83
    return-void
.end method

.method public size()I
    .locals 1

    .line 64
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-nez v0, :cond_1

    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    :goto_0
    return v0
.end method

.method union(Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;)Ljava/util/Set;
    .locals 4
    .param p1, "s"    # Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;

    .line 90
    iget-object v0, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    if-ne v0, v1, :cond_0

    iget-object v2, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    iget-object v3, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-eq v2, v3, :cond_1

    :cond_0
    iget-object v2, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-ne v0, v2, :cond_2

    iget-object v3, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-ne v3, v1, :cond_2

    .line 91
    :cond_1
    return-object p0

    .line 93
    :cond_2
    if-nez v0, :cond_3

    .line 94
    return-object p0

    .line 96
    :cond_3
    if-nez v1, :cond_4

    .line 97
    return-object p1

    .line 99
    :cond_4
    iget-object v3, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-nez v3, :cond_7

    .line 100
    if-nez v2, :cond_5

    .line 101
    new-instance v2, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;

    invoke-direct {v2, v1, v0}, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object v2

    .line 102
    :cond_5
    if-eq v0, v1, :cond_6

    if-ne v0, v2, :cond_7

    .line 103
    :cond_6
    return-object p0

    .line 106
    :cond_7
    if-nez v2, :cond_9

    .line 110
    if-eq v1, v0, :cond_8

    if-ne v1, v3, :cond_9

    .line 111
    :cond_8
    return-object p1

    .line 115
    :cond_9
    new-instance v0, Ljava/util/HashSet;

    const/4 v1, 0x4

    invoke-direct {v0, v1}, Ljava/util/HashSet;-><init>(I)V

    .line 116
    .local v0, "r":Ljava/util/HashSet;
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 117
    iget-object v1, p0, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-eqz v1, :cond_a

    .line 118
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 120
    :cond_a
    iget-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e1:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 121
    iget-object v1, p1, Lorg/checkerframework/org/objectweb/asmx/tree/analysis/SmallSet;->e2:Ljava/lang/Object;

    if-eqz v1, :cond_b

    .line 122
    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 124
    :cond_b
    return-object v0
.end method
