.class public Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;
.super Ljava/lang/Object;
.source "PrettyPrintVisitor.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field protected final configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

.field protected final printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;


# direct methods
.method public static synthetic $r8$lambda$EXAvkuWl0LVvIJ5kzJDEXE_swm0(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$UZs1ZIbU3D_z60K6ZAGNTDf0FkU(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static synthetic $r8$lambda$a4iWW4tnr8-5AuMMdDnlQgYX0c0(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$c9F1h0IEVotYELHedw0lcgqDXnI(Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic $r8$lambda$joM7xywFEI4q-VbRJfMFx9h58RY()Ljava/lang/AssertionError;
    .locals 1

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    return-object v0
.end method

.method public static synthetic $r8$lambda$wPmRgjL-F_EdcXLTYUbBW7jKfZI(Ljava/lang/Class;Ljava/lang/Object;)Z
    .locals 0

    invoke-virtual {p0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;)V
    .locals 1
    .param p1, "prettyPrinterConfiguration"    # Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "prettyPrinterConfiguration"
        }
    .end annotation

    .line 56
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 57
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    .line 58
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;)V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 59
    return-void
.end method

.method static synthetic lambda$visit$13(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;)Z
    .locals 1
    .param p0, "e"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "e"
        }
    .end annotation

    .line 1268
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    return v0
.end method

.method static synthetic lambda$visit$15(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;)I
    .locals 1
    .param p0, "i"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "i"
        }
    .end annotation

    .line 1671
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method static synthetic lambda$visit$3(Ljava/lang/String;)Z
    .locals 1
    .param p0, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "line"
        }
    .end annotation

    .line 345
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, " "

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method static synthetic lambda$visit$8(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Ljava/lang/Boolean;
    .locals 1
    .param p0, "p"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    .line 795
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->isReturnStmt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 796
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->isThrowStmt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 797
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->isAssertStmt()Z

    move-result v0

    if-nez v0, :cond_1

    .line 798
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->isExpressionStmt()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 795
    :goto_1
    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private printAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V
    .locals 4
    .param p2, "prefixWithASpace"    # Z
    .param p3, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0,
            0x10
        }
        names = {
            "annotations",
            "prefixWithASpace",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;Z",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .line 100
    .local p1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 101
    return-void

    .line 103
    :cond_0
    const-string v0, " "

    if-eqz p2, :cond_1

    .line 104
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1, v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 106
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 107
    .local v2, "annotation":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    invoke-virtual {v2, p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 108
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 109
    .end local v2    # "annotation":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    goto :goto_0

    .line 110
    :cond_2
    return-void
.end method

.method private printArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V
    .locals 5
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "args",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .line 142
    .local p1, "args":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 143
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 144
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v0

    const/4 v1, 0x1

    if-le v0, v1, :cond_0

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->isColumnAlignParameters()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .line 145
    .local v0, "columnAlignParameters":Z
    if-eqz v0, :cond_1

    .line 146
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->getCursor()Lorg/checkerframework/com/github/javaparser/Position;

    move-result-object v2

    iget v2, v2, Lorg/checkerframework/com/github/javaparser/Position;->column:I

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indentWithAlignTo(I)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 148
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 149
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 150
    .local v2, "e":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 151
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 152
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v4, ","

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 153
    if-eqz v0, :cond_2

    .line 154
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    goto :goto_2

    .line 156
    :cond_2
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v4, " "

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 159
    .end local v2    # "e":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    :cond_3
    :goto_2
    goto :goto_1

    .line 160
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    :cond_4
    if-eqz v0, :cond_5

    .line 161
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->unindent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 164
    .end local v0    # "columnAlignParameters":Z
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 165
    return-void
.end method

.method private printComment(Ljava/util/Optional;Ljava/lang/Void;)V
    .locals 1
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "comment",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .line 196
    .local p1, "comment":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;>;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda20;

    invoke-direct {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda20;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 197
    return-void
.end method

.method private printMemberAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V
    .locals 3
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "annotations",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .line 89
    .local p1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    return-void

    .line 92
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 93
    .local v1, "a":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 94
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 95
    .end local v1    # "a":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    goto :goto_0

    .line 96
    :cond_1
    return-void
.end method

.method private printMembers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V
    .locals 3
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "members",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .line 81
    .local p1, "members":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    .line 82
    .local v1, "member":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 83
    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 84
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 85
    .end local v1    # "member":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    goto :goto_0

    .line 86
    :cond_0
    return-void
.end method

.method private printModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "modifiers"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            ">;)V"
        }
    .end annotation

    .line 75
    .local p1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 76
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda0;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda11;

    invoke-direct {v3}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda11;-><init>()V

    invoke-interface {v2, v3}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v2

    const-string v3, " "

    invoke-static {v3}, Ljava/util/stream/Collectors;->joining(Ljava/lang/CharSequence;)Ljava/util/stream/Collector;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 78
    :cond_0
    return-void
.end method

.method private printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 9
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    .line 1759
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->isIgnoreComments()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1760
    :cond_0
    instance-of v0, p1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    if-eqz v0, :cond_1

    return-void

    .line 1762
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1763
    .local v0, "parent":Lorg/checkerframework/com/github/javaparser/ast/Node;
    if-nez v0, :cond_2

    return-void

    .line 1764
    :cond_2
    new-instance v2, Ljava/util/ArrayList;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1765
    .local v2, "everything":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-static {v2}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->sortByBeginPosition(Ljava/util/List;)V

    .line 1766
    const/4 v3, -0x1

    .line 1767
    .local v3, "positionOfTheChild":I
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v5

    if-ge v4, v5, :cond_4

    .line 1768
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, p1, :cond_3

    .line 1769
    move v3, v4

    .line 1770
    goto :goto_1

    .line 1767
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1773
    .end local v4    # "i":I
    :cond_4
    :goto_1
    const/4 v4, -0x1

    if-eq v3, v4, :cond_9

    .line 1776
    const/4 v5, -0x1

    .line 1777
    .local v5, "positionOfPreviousChild":I
    add-int/lit8 v6, v3, -0x1

    .local v6, "i":I
    :goto_2
    if-ltz v6, :cond_6

    if-ne v5, v4, :cond_6

    .line 1778
    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    instance-of v7, v7, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    if-nez v7, :cond_5

    move v5, v6

    .line 1777
    :cond_5
    add-int/lit8 v6, v6, -0x1

    goto :goto_2

    .line 1780
    .end local v6    # "i":I
    :cond_6
    add-int/lit8 v4, v5, 0x1

    .restart local v4    # "i":I
    :goto_3
    if-ge v4, v3, :cond_8

    .line 1781
    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1782
    .local v6, "nodeToPrint":Lorg/checkerframework/com/github/javaparser/ast/Node;
    instance-of v7, v6, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    if-eqz v7, :cond_7

    .line 1786
    invoke-virtual {v6, p0, v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1780
    .end local v6    # "nodeToPrint":Lorg/checkerframework/com/github/javaparser/ast/Node;
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 1783
    .restart local v6    # "nodeToPrint":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_7
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Expected comment, instead "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 1784
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ". Position of previous child: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ", position of child "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v1, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1788
    .end local v4    # "i":I
    .end local v6    # "nodeToPrint":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_8
    return-void

    .line 1774
    .end local v5    # "positionOfPreviousChild":I
    :cond_9
    new-instance v1, Ljava/lang/AssertionError;

    const-string v4, "I am not a child of my parent."

    invoke-direct {v1, v4}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method private printOrphanCommentsEnding(Lorg/checkerframework/com/github/javaparser/ast/Node;)V
    .locals 6
    .param p1, "node"    # Lorg/checkerframework/com/github/javaparser/ast/Node;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "node"
        }
    .end annotation

    .line 1791
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->isIgnoreComments()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1793
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getChildNodes()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1794
    .local v0, "everything":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/PositionUtils;->sortByBeginPosition(Ljava/util/List;)V

    .line 1795
    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1796
    return-void

    .line 1799
    :cond_1
    const/4 v1, 0x0

    .line 1800
    .local v1, "commentsAtEnd":I
    const/4 v2, 0x1

    .line 1801
    .local v2, "findingComments":Z
    :goto_0
    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 1802
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    sub-int/2addr v3, v1

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1803
    .local v3, "last":Lorg/checkerframework/com/github/javaparser/ast/Node;
    instance-of v2, v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1804
    if-eqz v2, :cond_2

    .line 1805
    add-int/lit8 v1, v1, 0x1

    .line 1807
    .end local v3    # "last":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_2
    goto :goto_0

    .line 1808
    :cond_3
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_4

    .line 1809
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v1

    add-int/2addr v4, v3

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/Node;

    const/4 v5, 0x0

    invoke-virtual {v4, p0, v5}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1808
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1811
    .end local v3    # "i":I
    :cond_4
    return-void
.end method

.method private printPrePostFixOptionalList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "arg"    # Ljava/lang/Void;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "separator"    # Ljava/lang/String;
    .param p5, "postfix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "args",
            "arg",
            "prefix",
            "separator",
            "postfix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "+",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;",
            ">;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 168
    .local p1, "args":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<+Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 169
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, p3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 170
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 171
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    .line 172
    .local v1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    invoke-interface {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 173
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 174
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, p4}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 176
    .end local v1    # "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    :cond_0
    goto :goto_0

    .line 177
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, p5}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 179
    :cond_2
    return-void
.end method

.method private printPrePostFixRequiredList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .param p2, "arg"    # Ljava/lang/Void;
    .param p3, "prefix"    # Ljava/lang/String;
    .param p4, "separator"    # Ljava/lang/String;
    .param p5, "postfix"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0,
            0x0,
            0x0
        }
        names = {
            "args",
            "arg",
            "prefix",
            "separator",
            "postfix"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "+",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;",
            ">;",
            "Ljava/lang/Void;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 182
    .local p1, "args":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<+Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;>;"
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, p3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 183
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 184
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 185
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    .line 186
    .local v1, "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    invoke-interface {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 187
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 188
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, p4}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 190
    .end local v1    # "v":Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    :cond_0
    goto :goto_0

    .line 192
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<+Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, p5}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 193
    return-void
.end method

.method private printSwitchNode(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/SwitchNode;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/SwitchNode;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1167
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/SwitchNode;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1168
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "switch("

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1169
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/SwitchNode;->getSelector()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1170
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ") {"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1171
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/SwitchNode;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1172
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1173
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/SwitchNode;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;

    .line 1174
    .local v1, "e":Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;
    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1175
    .end local v1    # "e":Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;
    goto :goto_0

    .line 1176
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->unindent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1178
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1179
    return-void
.end method

.method private printTypeArgs(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V
    .locals 5
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "nodeWithTypeArguments",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments<",
            "*>;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .line 113
    .local p1, "nodeWithTypeArguments":Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;, "Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments<*>;"
    invoke-interface {p1}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 114
    .local v0, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 115
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v2, "<"

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 116
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 117
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 118
    .local v2, "t":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 119
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 120
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 122
    .end local v2    # "t":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    :cond_0
    goto :goto_0

    .line 123
    .end local v1    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    :cond_1
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v2, ">"

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 125
    :cond_2
    return-void
.end method

.method private printTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V
    .locals 4
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "args",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;",
            ">;",
            "Ljava/lang/Void;",
            ")V"
        }
    .end annotation

    .line 128
    .local p1, "args":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 129
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "<"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 130
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 131
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;

    .line 132
    .local v1, "t":Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 133
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 134
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 136
    .end local v1    # "t":Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
    :cond_0
    goto :goto_0

    .line 137
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ">"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 139
    :cond_2
    return-void
.end method


# virtual methods
.method public getSource()Ljava/lang/String;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 66
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$null$5$org-checkerframework-com-github-javaparser-printer-PrettyPrintVisitor(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;Lorg/checkerframework/com/github/javaparser/ast/type/Type;)V
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .param p2, "arg"    # Ljava/lang/Void;
    .param p3, "commonType"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "n",
            "arg",
            "commonType"
        }
    .end annotation

    .line 528
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    .line 530
    .local v0, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    const/4 v1, 0x0

    .line 532
    .local v1, "arrayType":Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    invoke-virtual {p3}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getArrayLevel()I

    move-result v2

    .local v2, "i":I
    :goto_0
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getArrayLevel()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 533
    if-nez v1, :cond_0

    .line 534
    move-object v1, v0

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    goto :goto_1

    .line 536
    :cond_0
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    move-object v1, v3

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    .line 538
    :goto_1
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {p0, v3, v4, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 539
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v4, "[]"

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 532
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 541
    .end local v2    # "i":I
    :cond_1
    return-void
.end method

.method synthetic lambda$printComment$0$org-checkerframework-com-github-javaparser-printer-PrettyPrintVisitor(Ljava/lang/Void;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Void;
    .param p2, "c"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "c"
        }
    .end annotation

    .line 196
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$visit$1$org-checkerframework-com-github-javaparser-printer-PrettyPrintVisitor(Ljava/lang/Void;Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Void;
    .param p2, "m"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "m"
        }
    .end annotation

    .line 225
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$visit$10$org-checkerframework-com-github-javaparser-printer-PrettyPrintVisitor(Ljava/lang/Void;Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Void;
    .param p2, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .param p3, "rp"    # Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "n",
            "rp"
        }
    .end annotation

    .line 988
    invoke-virtual {p3, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 989
    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 990
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 992
    :cond_0
    return-void
.end method

.method synthetic lambda$visit$11$org-checkerframework-com-github-javaparser-printer-PrettyPrintVisitor(Ljava/lang/Void;Lorg/checkerframework/com/github/javaparser/ast/type/Type;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Void;
    .param p2, "t"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "t"
        }
    .end annotation

    .line 1080
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$visit$12$org-checkerframework-com-github-javaparser-printer-PrettyPrintVisitor(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V
    .locals 2
    .param p1, "l"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    .line 1215
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method synthetic lambda$visit$14$org-checkerframework-com-github-javaparser-printer-PrettyPrintVisitor(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)V
    .locals 2
    .param p1, "l"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "l"
        }
    .end annotation

    .line 1375
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    move-result-object v0

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    return-void
.end method

.method synthetic lambda$visit$2$org-checkerframework-com-github-javaparser-printer-PrettyPrintVisitor(Ljava/lang/Void;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Void;
    .param p2, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "cu"
        }
    .end annotation

    .line 232
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$visit$4$org-checkerframework-com-github-javaparser-printer-PrettyPrintVisitor(Ljava/lang/Void;Lorg/checkerframework/com/github/javaparser/ast/type/Type;)V
    .locals 0
    .param p1, "arg"    # Ljava/lang/Void;
    .param p2, "t"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "t"
        }
    .end annotation

    .line 502
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    return-void
.end method

.method synthetic lambda$visit$6$org-checkerframework-com-github-javaparser-printer-PrettyPrintVisitor(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .param p2, "arg"    # Ljava/lang/Void;
    .param p3, "ancestor"    # Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "n",
            "arg",
            "ancestor"
        }
    .end annotation

    .line 526
    invoke-interface {p3}, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;->getMaximumCommonType()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda16;

    invoke-direct {v1, p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda16;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method synthetic lambda$visit$7$org-checkerframework-com-github-javaparser-printer-PrettyPrintVisitor(Ljava/lang/String;)V
    .locals 1
    .param p1, "line"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "line"
        }
    .end annotation

    .line 740
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 741
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, p1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 742
    return-void
.end method

.method synthetic lambda$visit$9$org-checkerframework-com-github-javaparser-printer-PrettyPrintVisitor(Ljava/lang/Void;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)V
    .locals 2
    .param p1, "arg"    # Ljava/lang/Void;
    .param p2, "columnAlignFirstMethodChain"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p3, "methodCallWithScopeInScope"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p4, "lastMethodInCallChain"    # Ljava/util/concurrent/atomic/AtomicBoolean;
    .param p5, "scope"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "columnAlignFirstMethodChain",
            "methodCallWithScopeInScope",
            "lastMethodInCallChain",
            "scope"
        }
    .end annotation

    .line 854
    invoke-virtual {p5, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 855
    invoke-virtual {p2}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 856
    invoke-virtual {p3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 863
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 864
    :cond_0
    invoke-virtual {p4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-nez v0, :cond_1

    .line 870
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->reindentWithAlignToCursor()V

    .line 873
    :cond_1
    :goto_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 874
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 71
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 432
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 433
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 434
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 435
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 437
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 438
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 201
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 202
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 203
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getParsed()Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

    move-result-object v0

    sget-object v1, Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;->UNPARSABLE:Lorg/checkerframework/com/github/javaparser/ast/Node$Parsedness;

    if-ne v0, v1, :cond_0

    .line 204
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "???"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 205
    return-void

    .line 208
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 209
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 212
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 213
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_2

    .line 214
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 217
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;>;"
    :cond_3
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 218
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 219
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 220
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 221
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 225
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;>;"
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda14;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 227
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 228
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1685
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1686
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1687
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "import "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1688
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1689
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "static "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1691
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1692
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isAsterisk()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1693
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ".*"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1695
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1697
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1698
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 587
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getKeyword()Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier$Keyword;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 588
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 589
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1667
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->isOrderImports()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v0

    if-lez v0, :cond_1

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->get(I)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;

    if-eqz v0, :cond_1

    .line 1669
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0, p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>(Ljava/util/Collection;)V

    .line 1670
    .local v0, "modifiableList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;>;"
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda21;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda21;-><init>()V

    .line 1671
    invoke-static {v1}, Ljava/util/Comparator;->comparingInt(Ljava/util/function/ToIntFunction;)Ljava/util/Comparator;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda22;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda22;-><init>()V

    .line 1672
    invoke-interface {v1, v2}, Ljava/util/Comparator;->thenComparing(Ljava/util/function/Function;)Ljava/util/Comparator;

    move-result-object v1

    .line 1670
    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->sort(Ljava/util/Comparator;)V

    .line 1673
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 1674
    .local v2, "node":Ljava/lang/Object;
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1675
    .end local v2    # "node":Ljava/lang/Object;
    goto :goto_0

    .line 1676
    .end local v0    # "modifiableList":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;>;"
    :cond_0
    goto :goto_2

    .line 1677
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 1678
    .local v1, "node":Ljava/lang/Object;
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/Node;

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1679
    .end local v1    # "node":Ljava/lang/Object;
    goto :goto_1

    .line 1681
    :cond_2
    :goto_2
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 237
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 238
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 239
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 240
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "package "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 241
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 242
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 243
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 245
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 246
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 232
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->getCompilationUnits()Ljava/util/List;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda23;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;)V

    invoke-interface {v0, v1}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    .line 233
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1500
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1501
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1502
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 1503
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 1505
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "@interface "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1506
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1507
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1508
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1509
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1510
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printMembers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 1512
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->unindent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1513
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1514
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1518
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1519
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1520
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 1521
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 1523
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1524
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1525
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1526
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "()"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1527
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1528
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " default "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1529
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1531
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1532
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Void;)V
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 277
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 278
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 279
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 280
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 282
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->isInterface()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 283
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "interface "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 285
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "class "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 288
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 290
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 292
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    const-string v1, ", "

    if-nez v0, :cond_2

    .line 293
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v2, " extends "

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 294
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 295
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 296
    .local v2, "c":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 297
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 298
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 300
    .end local v2    # "c":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    :cond_1
    goto :goto_1

    .line 303
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    :cond_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    .line 304
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v2, " implements "

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 305
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 306
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 307
    .restart local v2    # "c":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 308
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 309
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 311
    .end local v2    # "c":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    :cond_3
    goto :goto_2

    .line 314
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 315
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 316
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 317
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printMembers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 320
    :cond_5
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 322
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->unindent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 323
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 324
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Void;)V
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 933
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 934
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 935
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 936
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 938
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 939
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->isGeneric()Z

    move-result v0

    const-string v1, " "

    if-eqz v0, :cond_0

    .line 940
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 942
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 944
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v2, "("

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 945
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    const-string v2, ", "

    if-nez v0, :cond_2

    .line 946
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 947
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 948
    .local v3, "p":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    invoke-virtual {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 949
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 950
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v4, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 952
    .end local v3    # "p":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    :cond_1
    goto :goto_0

    .line 954
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 956
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 957
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, " throws "

    invoke-virtual {v0, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 958
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 959
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    .line 960
    .local v3, "name":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    invoke-virtual {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 961
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 962
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v4, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 964
    .end local v3    # "name":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    :cond_3
    goto :goto_1

    .line 966
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 967
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 968
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1296
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1297
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1298
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 1299
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1301
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1302
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 1305
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1306
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1307
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1308
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printMembers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 1309
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->unindent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1310
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1312
    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Void;)V
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1242
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1243
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1244
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 1245
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 1247
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "enum "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1248
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1250
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    const-string v1, ", "

    if-nez v0, :cond_1

    .line 1251
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v2, " implements "

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1252
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1253
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 1254
    .local v2, "c":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1255
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1256
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1258
    .end local v2    # "c":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    :cond_0
    goto :goto_0

    .line 1261
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v2, " {"

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1262
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1263
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isNonEmpty()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 1264
    nop

    .line 1266
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v0

    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->getMaxEnumConstantsToAlignHorizontally()I

    move-result v2

    if-gt v0, v2, :cond_3

    .line 1268
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda1;

    invoke-direct {v2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda1;-><init>()V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    const/4 v0, 0x0

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v0, 0x1

    .line 1269
    .local v0, "alignVertically":Z
    :goto_2
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1270
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;>;"
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 1271
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    .line 1272
    .local v3, "e":Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    invoke-virtual {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1273
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    .line 1274
    if-eqz v0, :cond_4

    .line 1275
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v5, ","

    invoke-virtual {v4, v5}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    goto :goto_4

    .line 1277
    :cond_4
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v4, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1280
    .end local v3    # "e":Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    :cond_5
    :goto_4
    goto :goto_3

    .line 1282
    .end local v0    # "alignVertically":Z
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;>;"
    :cond_6
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_7

    .line 1283
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1284
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printMembers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    goto :goto_5

    .line 1286
    :cond_7
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_8

    .line 1287
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1290
    :cond_8
    :goto_5
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->unindent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1291
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1292
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Void;)V
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 495
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 497
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 498
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 499
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 500
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getMaximumCommonType()Ljava/util/Optional;

    move-result-object v0

    .line 502
    .local v0, "maximumCommonType":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda17;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda17;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 503
    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-nez v1, :cond_0

    .line 504
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v2, "???"

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 508
    .end local v0    # "maximumCommonType":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 509
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 510
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 511
    .local v1, "var":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 512
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 513
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 515
    .end local v1    # "var":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    :cond_1
    goto :goto_0

    .line 517
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;>;"
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 518
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1316
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1317
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1318
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->isStatic()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1319
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "static "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1321
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1322
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Void;)V
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 972
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 974
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 975
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 976
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 977
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 978
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const-string v1, " "

    if-nez v0, :cond_0

    .line 979
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 982
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 983
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 984
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 986
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v2, "("

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 987
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v0

    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, p2, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda13;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 993
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    const-string v2, ", "

    if-nez v0, :cond_2

    .line 994
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 995
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 996
    .local v3, "p":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    invoke-virtual {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 997
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 998
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v4, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1000
    .end local v3    # "p":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    :cond_1
    goto :goto_0

    .line 1002
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, ")"

    invoke-virtual {v0, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1004
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 1005
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, " throws "

    invoke-virtual {v0, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1006
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1007
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    .line 1008
    .local v3, "name":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    invoke-virtual {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1009
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 1010
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v4, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1012
    .end local v3    # "name":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    :cond_3
    goto :goto_1

    .line 1014
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-nez v0, :cond_5

    .line 1015
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    goto :goto_2

    .line 1017
    :cond_5
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1018
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1020
    :goto_2
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1024
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1025
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1026
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 1027
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 1028
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1029
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->isVarArgs()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1030
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 1031
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "..."

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1033
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;

    if-nez v0, :cond_1

    .line 1034
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1036
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1037
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1041
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1042
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1043
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 1044
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1045
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1046
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1047
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 522
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 523
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 524
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 526
    const-class v0, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithVariables;

    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->findAncestor(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda2;

    invoke-direct {v1, p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Void;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 543
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 544
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 545
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 547
    :cond_0
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Ljava/lang/Void;)V
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1593
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->isIgnoreComments()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1594
    return-void

    .line 1596
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;->getContent()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->getEndOfLineCharacter()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->normalizeEolInTextBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 1597
    .local v0, "commentContent":Ljava/lang/String;
    const-string v1, "\\R"

    const/4 v2, -0x1

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->split(Ljava/lang/String;I)[Ljava/lang/String;

    move-result-object v1

    .line 1598
    .local v1, "lines":[Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, "/*"

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1599
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v2, v3, :cond_1

    .line 1600
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    aget-object v4, v1, v2

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1601
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->getEndOfLineCharacter()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1599
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1603
    .end local v2    # "i":I
    :cond_1
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-object v3, v1, v3

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1604
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, "*/"

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1605
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Void;)V
    .locals 10
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 328
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 329
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->isPrintComments()Z

    move-result v0

    if-eqz v0, :cond_7

    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->isPrintJavadoc()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 330
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "/**"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 331
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getContent()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->getEndOfLineCharacter()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->normalizeEolInTextBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 332
    .local v0, "commentContent":Ljava/lang/String;
    const-string v1, "\\R"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 333
    .local v1, "lines":[Ljava/lang/String;
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 334
    .local v2, "strippedLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    array-length v3, v1

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v3, :cond_1

    aget-object v5, v1, v4

    .line 335
    .local v5, "line":Ljava/lang/String;
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v6

    .line 336
    .local v6, "trimmedLine":Ljava/lang/String;
    const-string v7, "*"

    invoke-virtual {v6, v7}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 337
    const/4 v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v5

    .line 339
    :cond_0
    invoke-static {v5}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->trimTrailingSpaces(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 340
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 334
    .end local v5    # "line":Ljava/lang/String;
    .end local v6    # "trimmedLine":Ljava/lang/String;
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 343
    :cond_1
    const/4 v3, 0x1

    .line 344
    .local v3, "skippingLeadingEmptyLines":Z
    const/4 v4, 0x0

    .line 345
    .local v4, "prependEmptyLine":Z
    invoke-interface {v2}, Ljava/util/List;->stream()Ljava/util/stream/Stream;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda19;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda19;-><init>()V

    invoke-interface {v5, v6}, Ljava/util/stream/Stream;->anyMatch(Ljava/util/function/Predicate;)Z

    move-result v5

    .line 346
    .local v5, "prependSpace":Z
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 347
    .local v7, "line":Ljava/lang/String;
    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v8

    if-eqz v8, :cond_2

    .line 348
    if-nez v3, :cond_5

    .line 349
    const/4 v4, 0x1

    goto :goto_2

    .line 352
    :cond_2
    const/4 v3, 0x0

    .line 353
    const-string v8, " *"

    if-eqz v4, :cond_3

    .line 354
    iget-object v9, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v9, v8}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 355
    const/4 v4, 0x0

    .line 357
    :cond_3
    iget-object v9, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v9, v8}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 358
    if-eqz v5, :cond_4

    .line 359
    iget-object v8, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v9, " "

    invoke-virtual {v8, v9}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 361
    :cond_4
    iget-object v8, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v8, v7}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 363
    .end local v7    # "line":Ljava/lang/String;
    :cond_5
    :goto_2
    goto :goto_1

    .line 364
    :cond_6
    iget-object v6, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v7, " */"

    invoke-virtual {v6, v7}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 366
    .end local v0    # "commentContent":Ljava/lang/String;
    .end local v1    # "lines":[Ljava/lang/String;
    .end local v2    # "strippedLines":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .end local v3    # "skippingLeadingEmptyLines":Z
    .end local v4    # "prependEmptyLine":Z
    .end local v5    # "prependSpace":Z
    :cond_7
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Ljava/lang/Void;)V
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1583
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->isIgnoreComments()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1584
    return-void

    .line 1586
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1587
    const-string v1, "// "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    move-result-object v0

    .line 1588
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->getContent()Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {v1, v2}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->normalizeEolInTextBlock(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1589
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 593
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 594
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 595
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 596
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "["

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 597
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 598
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 599
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 603
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 604
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 605
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "new "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 606
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 607
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;

    .line 608
    .local v1, "level":Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;
    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 609
    .end local v1    # "level":Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;
    goto :goto_0

    .line 610
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 611
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 612
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 614
    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Void;)V
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 551
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 552
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 553
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 554
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 555
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 556
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 557
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 558
    .local v2, "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 559
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 560
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v4, ", "

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 562
    .end local v2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    :cond_0
    goto :goto_0

    .line 563
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 565
    :cond_2
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 566
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 567
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Void;)V
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 618
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 619
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 620
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getTarget()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 621
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 622
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr$Operator;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 623
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 624
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 625
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Void;)V
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 629
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 630
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 631
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 632
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 633
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr$Operator;->asString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 634
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 635
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getRight()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 636
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 749
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 750
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 751
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->getValue()Z

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 752
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 640
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 641
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 642
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 643
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 644
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 645
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 646
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Void;)V
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 696
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 697
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 698
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "\'"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 699
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 700
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 701
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 650
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 651
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 652
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 653
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ".class"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 654
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 658
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 659
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 660
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 661
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " ? "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 662
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 663
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 664
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getElseExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 665
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 705
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 706
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 707
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 708
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 669
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 670
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 671
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 672
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 673
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 674
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 678
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 679
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 680
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 681
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 682
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 683
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 687
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 688
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 689
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 690
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " instanceof "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 691
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 692
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 712
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 713
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 714
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 715
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Void;)V
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1609
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1610
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1612
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 1613
    .local v0, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->isEnclosingParameters()Z

    move-result v1

    .line 1615
    .local v1, "printPar":Z
    if-eqz v1, :cond_0

    .line 1616
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, "("

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1618
    :cond_0
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1619
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 1620
    .local v3, "p":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    invoke-virtual {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1621
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1622
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v5, ", "

    invoke-virtual {v4, v5}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1624
    .end local v3    # "p":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    :cond_1
    goto :goto_0

    .line 1625
    .end local v2    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    :cond_2
    if-eqz v1, :cond_3

    .line 1626
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, ")"

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1629
    :cond_3
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, " -> "

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1630
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v2

    .line 1631
    .local v2, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    instance-of v3, v2, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    if-eqz v3, :cond_4

    .line 1633
    move-object v3, v2

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v3

    invoke-virtual {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    goto :goto_1

    .line 1635
    :cond_4
    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1637
    :goto_1
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 719
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 720
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 721
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 722
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1536
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1537
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1538
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1539
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1540
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1574
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1575
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1576
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1577
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " = "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1578
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1579
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Void;)V
    .locals 11
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 785
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 786
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 792
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 793
    .local v0, "columnAlignFirstMethodChain":Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->configuration:Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinterConfiguration;->isColumnAlignFirstMethodChain()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 798
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    .line 793
    if-eqz v1, :cond_1

    .line 795
    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->findAncestor(Ljava/lang/Class;)Ljava/util/Optional;

    move-result-object v1

    new-instance v5, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda3;

    invoke-direct {v5}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda3;-><init>()V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    .line 798
    invoke-virtual {v1, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    .line 795
    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 800
    move-object v1, p1

    .line 801
    .local v1, "c":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v5

    .line 802
    .local v5, "p":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    :goto_0
    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    if-eqz v6, :cond_0

    const-class v6, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTraversableScope;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda9;

    invoke-direct {v7, v6}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v5, v7}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v6

    const-class v7, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTraversableScope;

    invoke-virtual {v7}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda10;

    invoke-direct {v8, v7}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Class;)V

    .line 803
    invoke-virtual {v6, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda7;

    invoke-direct {v7}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda7;-><init>()V

    .line 804
    invoke-virtual {v6, v7}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda12;

    invoke-direct {v7, v1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda12;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 805
    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    .line 806
    invoke-virtual {v6, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Boolean;

    invoke-virtual {v6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 807
    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v6

    move-object v1, v6

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 808
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v5

    goto :goto_0

    .line 812
    :cond_0
    const-class v6, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v7, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda9;

    invoke-direct {v7, v6}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v5, v7}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6}, Ljava/util/Optional;->isPresent()Z

    move-result v6

    xor-int/2addr v6, v2

    invoke-virtual {v0, v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 818
    .end local v1    # "c":Lorg/checkerframework/com/github/javaparser/ast/Node;
    .end local v5    # "p":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    :cond_1
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    move-object v7, v1

    .line 819
    .local v7, "lastMethodInCallChain":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 820
    move-object v1, p1

    .line 821
    .local v1, "node":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_2
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v5

    const-class v6, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTraversableScope;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda9;

    invoke-direct {v8, v6}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda9;-><init>(Ljava/lang/Class;)V

    .line 822
    invoke-virtual {v5, v8}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v5

    const-class v6, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTraversableScope;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v8, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda10;

    invoke-direct {v8, v6}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda10;-><init>(Ljava/lang/Class;)V

    .line 823
    invoke-virtual {v5, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda7;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda7;-><init>()V

    .line 824
    invoke-virtual {v5, v6}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v6, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda12;

    invoke-direct {v6, v1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda12;-><init>(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 825
    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    .line 826
    invoke-virtual {v5, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Boolean;

    .line 821
    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    if-eqz v5, :cond_3

    .line 827
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/Node;->getParentNode()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda4;

    invoke-direct {v6}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda4;-><init>()V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElseThrow(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v5

    move-object v1, v5

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 828
    instance-of v5, v1, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    if-eqz v5, :cond_2

    .line 829
    invoke-virtual {v7, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 830
    nop

    .line 837
    .end local v1    # "node":Lorg/checkerframework/com/github/javaparser/ast/Node;
    :cond_3
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    move-object v8, v1

    .line 838
    .local v8, "methodCallWithScopeInScope":Ljava/util/concurrent/atomic/AtomicBoolean;
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 839
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v1

    .line 840
    .local v1, "s":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    :goto_1
    const-class v3, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTraversableScope;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda5;

    invoke-direct {v4, v3}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 841
    const-class v3, Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTraversableScope;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda6;

    invoke-direct {v4, v3}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda6;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda7;

    invoke-direct {v4}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda7;-><init>()V

    .line 842
    invoke-virtual {v3, v4}, Ljava/util/Optional;->flatMap(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    .line 843
    .local v3, "parentScope":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    const-class v4, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v5, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda5;

    invoke-direct {v5, v4}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda5;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v1, v5}, Ljava/util/Optional;->filter(Ljava/util/function/Predicate;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 844
    invoke-virtual {v8, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 845
    goto :goto_2

    .line 847
    :cond_4
    move-object v1, v3

    .line 848
    .end local v3    # "parentScope":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    goto :goto_1

    .line 853
    .end local v1    # "s":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    :cond_5
    :goto_2
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v9

    new-instance v10, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda8;

    move-object v1, v10

    move-object v2, p0

    move-object v3, p2

    move-object v4, v0

    move-object v5, v8

    move-object v6, v7

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda8;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;Ljava/util/concurrent/atomic/AtomicBoolean;)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 876
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printTypeArgs(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    .line 877
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 878
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->duplicateIndent()V

    .line 879
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 880
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->unindent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 881
    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v8}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-virtual {v7}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 883
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->reindentToPreviousLevel()V

    .line 885
    :cond_6
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Void;)V
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1641
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1642
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1643
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    .line 1644
    .local v0, "scope":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    .line 1645
    .local v1, "identifier":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1646
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1649
    :cond_0
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, "::"

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1650
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printTypeArgs(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    .line 1651
    if-eqz v1, :cond_1

    .line 1652
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1654
    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 259
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 260
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 261
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 262
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 263
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 265
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 267
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 268
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Ljava/lang/Void;)V
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 250
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 251
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 252
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 254
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 255
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Void;)V
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1555
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1556
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1557
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1558
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1559
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1560
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1561
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1562
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;

    .line 1563
    .local v1, "m":Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;
    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1564
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1565
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1567
    .end local v1    # "m":Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;
    :cond_0
    goto :goto_0

    .line 1569
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1570
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 756
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 757
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 758
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "null"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 759
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 889
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 890
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 891
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 892
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 893
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 896
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "new "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 898
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printTypeArgs(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    .line 899
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Collection;

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 900
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 903
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 905
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 907
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 908
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 909
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 910
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printMembers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 911
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->unindent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 912
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 914
    :cond_2
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 272
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getIdentifier()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 273
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1544
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1545
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1546
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "@"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1547
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1548
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1549
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1550
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1551
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Void;)V
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 726
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 727
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 728
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "\""

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 729
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getValue()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 730
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 731
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 774
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 775
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 776
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 777
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 778
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 780
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "super"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 781
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Void;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1162
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1163
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printSwitchNode(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/SwitchNode;Ljava/lang/Void;)V

    .line 1164
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Void;)V
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 735
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 736
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 737
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "\"\"\""

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 738
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 739
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->stripIndentOfLines()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda26;

    invoke-direct {v2, p0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda26;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;)V

    invoke-interface {v0, v2}, Ljava/util/stream/Stream;->forEach(Ljava/util/function/Consumer;)V

    .line 743
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 744
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->unindent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 745
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 763
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 764
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 765
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 766
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 767
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 769
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 770
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Void;)V
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1658
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1659
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1660
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1661
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1663
    :cond_0
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 918
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 919
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 920
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->isPrefix()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 921
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 924
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 926
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->isPostfix()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 927
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getOperator()Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr$Operator;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 929
    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Void;)V
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1070
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1071
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1072
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getParentNode()Ljava/util/Optional;

    move-result-object v0

    const-class v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda24;

    invoke-direct {v2, v1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda24;-><init>(Ljava/lang/Class;)V

    invoke-virtual {v0, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1073
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    goto :goto_0

    .line 1075
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 1077
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 1079
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 1080
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getMaximumCommonType()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda25;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda25;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;Ljava/lang/Void;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1082
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1084
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1085
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 1086
    .local v1, "v":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1087
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1088
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1090
    .end local v1    # "v":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    :cond_2
    goto :goto_1

    .line 1091
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;>;"
    :cond_3
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1703
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printMemberAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 1704
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->isOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1705
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "open "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1707
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "module "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1708
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1709
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " {"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1710
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1711
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->unindent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    move-result-object v0

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1712
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Void;)V
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1724
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "exports "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1725
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1726
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    const-string v4, " to "

    const-string v5, ", "

    const-string v6, ""

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printPrePostFixOptionalList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1727
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1728
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Void;)V
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1747
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "opens "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1748
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1749
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    const-string v4, " to "

    const-string v5, ", "

    const-string v6, ""

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printPrePostFixOptionalList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1750
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1751
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Void;)V
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1732
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "provides "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1733
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1734
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    const-string v4, " with "

    const-string v5, ", "

    const-string v6, ""

    move-object v1, p0

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printPrePostFixRequiredList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1736
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1716
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "requires "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1717
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V

    .line 1718
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1719
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1720
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1740
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "uses "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1741
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1742
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1743
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1102
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1103
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1104
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "assert "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1105
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1106
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1107
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1108
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1110
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1111
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Void;)V
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1115
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1116
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1117
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "{"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1118
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 1119
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1120
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 1121
    .local v1, "s":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1122
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1123
    .end local v1    # "s":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    goto :goto_0

    .line 1124
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->unindent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1126
    :cond_1
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsEnding(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1127
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1128
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1212
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1213
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1214
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "break"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1215
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda15;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda15;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1216
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1217
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1490
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1491
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1492
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " catch ("

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1493
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getParameter()Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1494
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1495
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1496
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1372
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1373
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1374
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "continue"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1375
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda18;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor$$ExternalSyntheticLambda18;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 1376
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1377
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1381
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1382
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1383
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "do "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1384
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1385
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " while ("

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1386
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1387
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ");"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1388
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1141
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1142
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1143
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1144
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1051
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1052
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1053
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->isThis()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1054
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printTypeArgs(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    .line 1055
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "this"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 1057
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1058
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1059
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1061
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printTypeArgs(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    .line 1062
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "super"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1064
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Void;)V

    .line 1065
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1066
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1148
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1149
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1150
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1151
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1152
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1392
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1393
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1394
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "for ("

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1395
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1396
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " : "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1397
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1398
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1399
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1400
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Void;)V
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1404
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1405
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1406
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "for ("

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1407
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    const-string v1, ", "

    if-eqz v0, :cond_1

    .line 1408
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1409
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 1410
    .local v2, "e":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1411
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1412
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1414
    .end local v2    # "e":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    :cond_0
    goto :goto_0

    .line 1416
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v2, "; "

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1417
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1418
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1420
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1421
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 1422
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .restart local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 1423
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 1424
    .restart local v2    # "e":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1425
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1426
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1428
    .end local v2    # "e":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    :cond_3
    goto :goto_1

    .line 1430
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    :cond_4
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1431
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1432
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Void;)V
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1326
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1327
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1328
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "if ("

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1329
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1330
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    instance-of v0, v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 1331
    .local v0, "thenBlock":Z
    if-eqz v0, :cond_0

    .line 1332
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v2, ") "

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 1334
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v2, ")"

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1335
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1337
    :goto_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1338
    if-nez v0, :cond_1

    .line 1339
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->unindent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1340
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->isPresent()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 1341
    if-eqz v0, :cond_2

    .line 1342
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v2, " "

    invoke-virtual {v1, v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    .line 1344
    :cond_2
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1345
    :goto_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    instance-of v1, v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    .line 1346
    .local v1, "elseIf":Z
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 1347
    .local v2, "elseBlock":Z
    if-nez v1, :cond_4

    if-eqz v2, :cond_3

    goto :goto_2

    .line 1350
    :cond_3
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v4, "else"

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1351
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    goto :goto_3

    .line 1348
    :cond_4
    :goto_2
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v4, "else "

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1353
    :goto_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 1354
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    invoke-virtual {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1355
    :cond_5
    if-nez v1, :cond_6

    if-nez v2, :cond_6

    .line 1356
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->unindent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1358
    .end local v1    # "elseIf":Z
    .end local v2    # "elseBlock":Z
    :cond_6
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1132
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1133
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1134
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1135
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ": "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1136
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getStatement()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1137
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Void;)V
    .locals 1
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1095
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1096
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1097
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getClassDeclaration()Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1098
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1230
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1231
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1232
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "return"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1233
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1234
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1235
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1237
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1238
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Void;)V
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1183
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1184
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1186
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1187
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "default:"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    goto :goto_1

    .line 1189
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "case "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1190
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1191
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 1192
    .local v1, "label":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1193
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1194
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, ", "

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1196
    .end local v1    # "label":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    :cond_1
    goto :goto_0

    .line 1197
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    :cond_2
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1199
    :goto_1
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1200
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1201
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 1202
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 1203
    .local v1, "s":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1204
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1205
    .end local v1    # "s":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    goto :goto_2

    .line 1207
    :cond_3
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->unindent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1208
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Void;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1156
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1157
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printSwitchNode(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/SwitchNode;Ljava/lang/Void;)V

    .line 1158
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1445
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1446
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1447
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "synchronized ("

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1448
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1449
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1450
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1451
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1436
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1437
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1438
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "throw "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1439
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1440
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1441
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Void;)V
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1455
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1456
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1457
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "try "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1458
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getResources()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3

    .line 1459
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "("

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1460
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getResources()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .line 1461
    .local v0, "resources":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    const/4 v1, 0x1

    .line 1462
    .local v1, "first":Z
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 1463
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1464
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1465
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, ";"

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1466
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->println()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1467
    if-eqz v1, :cond_0

    .line 1468
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->indent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1471
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 1473
    :cond_1
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getResources()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->size()I

    move-result v2

    const/4 v3, 0x1

    if-le v2, v3, :cond_2

    .line 1474
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->unindent()Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1476
    :cond_2
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, ") "

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1478
    .end local v0    # "resources":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    .end local v1    # "first":Z
    :cond_3
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1479
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;

    .line 1480
    .local v1, "c":Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1481
    .end local v1    # "c":Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
    goto :goto_1

    .line 1482
    :cond_4
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 1483
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " finally "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1484
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1486
    :cond_5
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1755
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "???;"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1756
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1362
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1363
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1364
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "while ("

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1365
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1366
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ") "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1367
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1368
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 1221
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 1222
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 1223
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "yield "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1224
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 1225
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, ";"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 1226
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Void;)V
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 415
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    .line 416
    .local v0, "arrayTypeBuffer":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;>;"
    move-object v1, p1

    .line 417
    .local v1, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    :goto_0
    instance-of v2, v1, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    if-eqz v2, :cond_0

    .line 418
    move-object v2, v1

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    .line 419
    .local v2, "arrayType":Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 420
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    .line 421
    .end local v2    # "arrayType":Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    goto :goto_0

    .line 423
    :cond_0
    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 424
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    .line 425
    .local v3, "arrayType":Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    const/4 v5, 0x1

    invoke-direct {p0, v4, v5, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 426
    iget-object v4, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v5, "[]"

    invoke-virtual {v4, v5}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 427
    .end local v3    # "arrayType":Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
    goto :goto_1

    .line 428
    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 370
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 371
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 372
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 373
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 374
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "."

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 376
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 378
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 380
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->isUsingDiamondOperator()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 381
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "<>"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    goto :goto_0

    .line 383
    :cond_1
    invoke-direct {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printTypeArgs(Lorg/checkerframework/com/github/javaparser/ast/nodeTypes/NodeWithTypeArguments;Ljava/lang/Void;)V

    .line 385
    :goto_0
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Ljava/lang/Void;)V
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 442
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 443
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 444
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 445
    const/4 v0, 0x1

    .line 446
    .local v0, "isFirst":Z
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    .line 447
    .local v2, "element":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    if-eqz v0, :cond_0

    .line 448
    const/4 v0, 0x0

    goto :goto_1

    .line 450
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v4, " & "

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 452
    :goto_1
    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 453
    .end local v2    # "element":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    goto :goto_0

    .line 454
    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 407
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 408
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 409
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 410
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType$Primitive;->asString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 411
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Ljava/lang/Void;)V
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 389
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 390
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 391
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 392
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 393
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->isNullOrEmpty(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 394
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " extends "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 395
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 396
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 397
    .local v1, "c":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 398
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 399
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v3, " & "

    invoke-virtual {v2, v3}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 401
    .end local v1    # "c":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    :cond_0
    goto :goto_0

    .line 403
    .end local v0    # "i":Ljava/util/Iterator;, "Ljava/util/Iterator<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Void;)V
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 458
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 459
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 460
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x1

    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 461
    const/4 v0, 0x1

    .line 462
    .local v0, "isFirst":Z
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    .line 463
    .local v2, "element":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    if-eqz v0, :cond_0

    .line 464
    const/4 v0, 0x0

    goto :goto_1

    .line 466
    :cond_0
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v4, " | "

    invoke-virtual {v3, v4}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 468
    :goto_1
    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 469
    .end local v2    # "element":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    goto :goto_0

    .line 470
    :cond_1
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Ljava/lang/Void;)V
    .locals 0
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 491
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/VarType;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 579
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 580
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 581
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 582
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "var"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 583
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 571
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 572
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 573
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 574
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "void"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 575
    return-void
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 52
    check-cast p2, Ljava/lang/Void;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Void;)V

    return-void
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Void;)V
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
    .param p2, "arg"    # Ljava/lang/Void;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "n",
            "arg"
        }
    .end annotation

    .line 474
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printOrphanCommentsBeforeThisChildNode(Lorg/checkerframework/com/github/javaparser/ast/Node;)V

    .line 475
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getComment()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printComment(Ljava/util/Optional;Ljava/lang/Void;)V

    .line 476
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1, p2}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;ZLjava/lang/Void;)V

    .line 477
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, "?"

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 478
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 479
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " extends "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 480
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 482
    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 483
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrintVisitor;->printer:Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    const-string v1, " super "

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;->print(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/printer/SourcePrinter;

    .line 484
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/VoidVisitor;Ljava/lang/Object;)V

    .line 486
    :cond_1
    return-void
.end method
