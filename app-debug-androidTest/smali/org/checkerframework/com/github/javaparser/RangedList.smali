.class Lorg/checkerframework/com/github/javaparser/RangedList;
.super Ljava/lang/Object;
.source "RangedList.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lorg/checkerframework/com/github/javaparser/ast/Node;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field list:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TT;>;"
        }
    .end annotation
.end field

.field range:Lorg/checkerframework/com/github/javaparser/TokenRange;


# direct methods
.method constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "list"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TT;>;)V"
        }
    .end annotation

    .line 15
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/RangedList;, "Lorg/checkerframework/com/github/javaparser/RangedList<TT;>;"
    .local p1, "list":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TT;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    new-instance v0, Lorg/checkerframework/com/github/javaparser/TokenRange;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/JavaToken;->INVALID:Lorg/checkerframework/com/github/javaparser/JavaToken;

    sget-object v2, Lorg/checkerframework/com/github/javaparser/JavaToken;->INVALID:Lorg/checkerframework/com/github/javaparser/JavaToken;

    invoke-direct {v0, v1, v2}, Lorg/checkerframework/com/github/javaparser/TokenRange;-><init>(Lorg/checkerframework/com/github/javaparser/JavaToken;Lorg/checkerframework/com/github/javaparser/JavaToken;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/RangedList;->range:Lorg/checkerframework/com/github/javaparser/TokenRange;

    .line 16
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/RangedList;->list:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 17
    return-void
.end method


# virtual methods
.method add(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "t"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 28
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/RangedList;, "Lorg/checkerframework/com/github/javaparser/RangedList<TT;>;"
    .local p1, "t":Lorg/checkerframework/com/github/javaparser/ast/Node;, "TT;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/RangedList;->list:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    if-nez v0, :cond_0

    .line 29
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/RangedList;->list:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 31
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/RangedList;->list:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->add(Lorg/checkerframework/com/github/javaparser/ast/Node;)Z

    .line 32
    return-void
.end method

.method beginAt(Lorg/checkerframework/com/github/javaparser/JavaToken;)V
    .locals 1
    .param p1, "begin"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "begin"
        }
    .end annotation

    .line 20
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/RangedList;, "Lorg/checkerframework/com/github/javaparser/RangedList<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/RangedList;->range:Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/TokenRange;->withBegin(Lorg/checkerframework/com/github/javaparser/JavaToken;)Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/RangedList;->range:Lorg/checkerframework/com/github/javaparser/TokenRange;

    .line 21
    return-void
.end method

.method endAt(Lorg/checkerframework/com/github/javaparser/JavaToken;)V
    .locals 1
    .param p1, "end"    # Lorg/checkerframework/com/github/javaparser/JavaToken;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "end"
        }
    .end annotation

    .line 24
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/RangedList;, "Lorg/checkerframework/com/github/javaparser/RangedList<TT;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/RangedList;->range:Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/TokenRange;->withEnd(Lorg/checkerframework/com/github/javaparser/JavaToken;)Lorg/checkerframework/com/github/javaparser/TokenRange;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/RangedList;->range:Lorg/checkerframework/com/github/javaparser/TokenRange;

    .line 25
    return-void
.end method
