.class public Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;
.super Ljava/lang/Object;
.source "CsmConditional.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
    }
.end annotation


# instance fields
.field private final condition:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

.field private final elseElement:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

.field private final properties:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;",
            ">;"
        }
    .end annotation
.end field

.field private final thenElement:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;


# direct methods
.method public constructor <init>(Ljava/util/List;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 2
    .param p2, "condition"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
    .param p3, "thenElement"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p4, "elseElement"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "properties",
            "condition",
            "thenElement",
            "elseElement"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;",
            ">;",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            "Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;",
            ")V"
        }
    .end annotation

    .line 93
    .local p1, "properties":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 94
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-lt v0, v1, :cond_0

    .line 97
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->properties:Ljava/util/List;

    .line 98
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->condition:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    .line 99
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->thenElement:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 100
    iput-object p4, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->elseElement:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 101
    return-void

    .line 95
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 1
    .param p1, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p2, "condition"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
    .param p3, "thenElement"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "condition",
            "thenElement"
        }
    .end annotation

    .line 104
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmNone;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;-><init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V

    .line 105
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;)V
    .locals 2
    .param p1, "property"    # Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .param p2, "condition"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
    .param p3, "thenElement"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .param p4, "elseElement"    # Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "property",
            "condition",
            "thenElement",
            "elseElement"
        }
    .end annotation

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v0, 0x1

    new-array v0, v0, [Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->properties:Ljava/util/List;

    .line 88
    iput-object p2, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->condition:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    .line 89
    iput-object p3, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->thenElement:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 90
    iput-object p4, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->elseElement:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    .line 91
    return-void
.end method


# virtual methods
.method public getCondition()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;
    .locals 1

    .line 39
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->condition:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    return-object v0
.end method

.method public getElseElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 58
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->elseElement:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object v0
.end method

.method public getProperties()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;",
            ">;"
        }
    .end annotation

    .line 50
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->properties:Ljava/util/List;

    return-object v0
.end method

.method public getProperty()Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    .locals 2

    .line 43
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->properties:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-gt v0, v1, :cond_0

    .line 46
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->properties:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    return-object v0

    .line 44
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0
.end method

.method public getThenElement()Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;
    .locals 1

    .line 54
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->thenElement:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    return-object v0
.end method

.method public prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V
    .locals 4
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .param p2, "printer"    # Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "node",
            "printer"
        }
    .end annotation

    .line 109
    const/4 v0, 0x0

    .line 110
    .local v0, "test":Z
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->properties:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;

    .line 111
    .local v2, "prop":Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    if-nez v0, :cond_1

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->condition:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;

    invoke-virtual {v3, p1, v2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional$Condition;->evaluate(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    :cond_0
    const/4 v3, 0x0

    goto :goto_2

    :cond_1
    :goto_1
    const/4 v3, 0x1

    :goto_2
    move v0, v3

    .line 112
    .end local v2    # "prop":Lorg/checkerframework/com/github/javaparser/ast/observer/ObservableProperty;
    goto :goto_0

    .line 113
    :cond_2
    if-eqz v0, :cond_3

    .line 114
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->thenElement:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    goto :goto_3

    .line 116
    :cond_3
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmConditional;->elseElement:Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;

    invoke-interface {v1, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/concretesyntaxmodel/CsmElement;->prettyPrint(Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;)V

    .line 118
    :goto_3
    return-void
.end method
