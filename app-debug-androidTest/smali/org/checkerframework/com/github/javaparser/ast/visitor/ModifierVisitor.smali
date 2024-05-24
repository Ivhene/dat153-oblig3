.class public Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;
.super Ljava/lang/Object;
.source "ModifierVisitor.java"

# interfaces
.implements Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<A:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor<",
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;",
        "TA;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private modifyList(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TN;>;>;TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TN;>;"
        }
    .end annotation

    .line 1130
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p1, "list":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda92;

    invoke-direct {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda92;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method private modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "list",
            "arg"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<N:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TN;>;TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "TN;>;"
        }
    .end annotation

    .line 1126
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p1, "list":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<TN;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method


# virtual methods
.method synthetic lambda$modifyList$107$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "ns"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "ns"
        }
    .end annotation

    .line 1130
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-direct {p0, p2, p1}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    return-object v0
.end method

.method synthetic lambda$visit$0$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 59
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$1$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method synthetic lambda$visit$10$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 156
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$100$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1034
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$101$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1046
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$102$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1059
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$103$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1071
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$104$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1103
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$105$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1113
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$106$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1120
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$108$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1137
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$109$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1150
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$11$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 170
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$110$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1163
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$111$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1176
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$112$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1188
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$113$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1200
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$114$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1211
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$115$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1221
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$116$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1234
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$117$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1242
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$118$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1251
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$119$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1263
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$12$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 178
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$120$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1273
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$13$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    return-object v0
.end method

.method synthetic lambda$visit$14$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 186
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$15$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 196
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$16$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 209
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$17$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 220
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$18$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 228
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$19$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 245
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$2$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 77
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$20$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;)Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 262
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    return-object v0
.end method

.method synthetic lambda$visit$21$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 265
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$22$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 279
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    return-object v0
.end method

.method synthetic lambda$visit$23$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 280
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    return-object v0
.end method

.method synthetic lambda$visit$24$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 282
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$25$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 313
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$26$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 329
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    return-object v0
.end method

.method synthetic lambda$visit$27$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 333
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$28$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 350
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    return-object v0
.end method

.method synthetic lambda$visit$29$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 351
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$3$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 93
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$30$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 361
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$31$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 372
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$32$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 379
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$33$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 387
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$34$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 401
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$35$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 420
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$36$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 436
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method synthetic lambda$visit$37$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 438
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$38$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 449
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$39$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 462
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$4$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 105
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    return-object v0
.end method

.method synthetic lambda$visit$40$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 477
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$41$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 492
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$42$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 505
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method synthetic lambda$visit$43$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 508
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$44$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 522
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    return-object v0
.end method

.method synthetic lambda$visit$45$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 524
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$46$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 538
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$47$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 551
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$48$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 562
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$49$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 569
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$5$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 107
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$50$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 578
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$51$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 589
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$52$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 597
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$53$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 609
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$54$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 622
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method synthetic lambda$visit$55$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 624
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$56$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 637
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    return-object v0
.end method

.method synthetic lambda$visit$57$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 642
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    return-object v0
.end method

.method synthetic lambda$visit$58$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 646
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$59$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 665
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$6$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 120
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$60$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 677
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$61$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 688
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$62$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 697
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method synthetic lambda$visit$63$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 700
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$64$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 716
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$65$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 732
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$66$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 746
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    return-object v0
.end method

.method synthetic lambda$visit$67$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 747
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$68$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 756
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$69$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 764
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$7$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 129
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method synthetic lambda$visit$70$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 773
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$71$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 785
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method synthetic lambda$visit$72$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 786
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$73$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 797
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$74$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 810
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$75$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 821
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method synthetic lambda$visit$76$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 822
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$77$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 832
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$78$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 843
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$79$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 850
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    return-object v0
.end method

.method synthetic lambda$visit$8$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 130
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$80$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 851
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$81$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 861
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$82$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 872
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$83$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 885
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$84$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 896
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    return-object v0
.end method

.method synthetic lambda$visit$85$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 897
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$86$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 906
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$87$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 917
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    return-object v0
.end method

.method synthetic lambda$visit$88$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 920
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$89$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 934
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$9$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 143
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$90$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 947
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$91$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 960
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$92$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 971
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$93$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 982
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$94$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 994
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method synthetic lambda$visit$95$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 997
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$96$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1010
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$97$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1020
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    return-object v0
.end method

.method synthetic lambda$visit$98$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1031
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    return-object v0
.end method

.method synthetic lambda$visit$99$org-checkerframework-com-github-javaparser-ast-visitor-ModifierVisitor(Ljava/lang/Object;Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .locals 1
    .param p1, "arg"    # Ljava/lang/Object;
    .param p2, "s"    # Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "arg",
            "s"
        }
    .end annotation

    .line 1032
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p2, p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    return-object v0
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Ljava/lang/Object;
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

    .line 51
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;"
        }
    .end annotation

    .line 1102
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 1103
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda2;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda2;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1104
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 1105
    return-object v2

    .line 1106
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;

    .line 1107
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1108
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 784
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 785
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getDimension()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda78;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda78;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 786
    .local v1, "dimension":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->getComment()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda79;

    invoke-direct {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda79;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 787
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;

    .line 788
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->setDimension(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;

    .line 789
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 790
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 278
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 279
    .local v0, "imports":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getModule()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda16;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda16;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    .line 280
    .local v1, "module":Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda17;

    invoke-direct {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda17;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    .line 281
    .local v3, "packageDeclaration":Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 282
    .local v4, "types":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getComment()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda18;

    invoke-direct {v6, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda18;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 283
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setImports(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 284
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setModule(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 285
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setPackageDeclaration(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 286
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setTypes(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 287
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 288
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/Modifier;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/Modifier;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/Modifier;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1242
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda28;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda28;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1243
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/Modifier;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1244
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/NodeList;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1081
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1082
    return-object p1

    .line 1084
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 1085
    .local v0, "changeList":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/utils/Pair<Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;>;>;"
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 1086
    .local v1, "listCopy":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1087
    .local v3, "node":Lorg/checkerframework/com/github/javaparser/ast/Node;
    invoke-virtual {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/Node;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1088
    .local v4, "newNode":Lorg/checkerframework/com/github/javaparser/ast/Node;
    new-instance v5, Lorg/checkerframework/com/github/javaparser/utils/Pair;

    invoke-direct {v5, v3, v4}, Lorg/checkerframework/com/github/javaparser/utils/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-interface {v0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1089
    .end local v3    # "node":Lorg/checkerframework/com/github/javaparser/ast/Node;
    .end local v4    # "newNode":Lorg/checkerframework/com/github/javaparser/ast/Node;
    goto :goto_0

    .line 1090
    :cond_1
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/utils/Pair;

    .line 1091
    .local v3, "change":Lorg/checkerframework/com/github/javaparser/utils/Pair;, "Lorg/checkerframework/com/github/javaparser/utils/Pair<Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    iget-object v4, v3, Lorg/checkerframework/com/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    if-nez v4, :cond_2

    .line 1092
    iget-object v4, v3, Lorg/checkerframework/com/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    invoke-static {p1, v4}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->removeElementByObjectIdentity(Ljava/util/List;Ljava/lang/Object;)V

    goto :goto_2

    .line 1094
    :cond_2
    iget-object v4, v3, Lorg/checkerframework/com/github/javaparser/utils/Pair;->a:Ljava/lang/Object;

    iget-object v5, v3, Lorg/checkerframework/com/github/javaparser/utils/Pair;->b:Ljava/lang/Object;

    invoke-static {p1, v4, v5}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->replaceElementByObjectIdentity(Ljava/util/List;Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1096
    .end local v3    # "change":Lorg/checkerframework/com/github/javaparser/utils/Pair;, "Lorg/checkerframework/com/github/javaparser/utils/Pair<Lorg/checkerframework/com/github/javaparser/ast/Node;Lorg/checkerframework/com/github/javaparser/ast/Node;>;"
    :goto_2
    goto :goto_1

    .line 1097
    :cond_3
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 714
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 715
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 716
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda35;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda35;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 717
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v1, :cond_0

    .line 718
    return-object v3

    .line 719
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    .line 720
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    .line 721
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 722
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/StubUnit;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 305
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "The method is not implemented!"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 55
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 56
    .local v0, "members":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 57
    .local v1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 58
    .local v2, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 59
    .local v3, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda65;

    invoke-direct {v5, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda65;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 60
    .local v4, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v2, :cond_0

    .line 61
    return-object v5

    .line 62
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->setMembers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    .line 63
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    .line 64
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    .line 65
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    .line 66
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 67
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 8
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 72
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getDefaultValue()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda19;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda19;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 73
    .local v0, "defaultValue":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 74
    .local v2, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v3

    invoke-virtual {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 75
    .local v3, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v4

    invoke-virtual {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 76
    .local v4, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v5

    .line 77
    .local v5, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda20;

    invoke-direct {v7, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda20;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 78
    .local v6, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v3, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    .line 80
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->setDefaultValue(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;

    .line 81
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;

    .line 82
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;

    .line 83
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;

    .line 84
    invoke-virtual {p1, v5}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    .line 85
    invoke-virtual {p1, v6}, Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationMemberDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 86
    return-object p1

    .line 79
    :cond_1
    :goto_0
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 9
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 238
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getExtendedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 239
    .local v0, "extendedTypes":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 240
    .local v1, "implementedTypes":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 241
    .local v2, "typeParameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 242
    .local v3, "members":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 243
    .local v4, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v5

    invoke-virtual {v5, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 244
    .local v5, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v6

    .line 245
    .local v6, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v7

    new-instance v8, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda47;

    invoke-direct {v8, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda47;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v7, v8}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v7

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 246
    .local v7, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v5, :cond_0

    .line 247
    return-object v8

    .line 248
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->setExtendedTypes(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    .line 249
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->setImplementedTypes(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    .line 250
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->setTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    .line 251
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->setMembers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    .line 252
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    .line 253
    invoke-virtual {p1, v5}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    .line 254
    invoke-virtual {p1, v6}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    .line 255
    invoke-virtual {p1, v7}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 256
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 11
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 325
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 326
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 327
    .local v1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 328
    .local v2, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 329
    .local v3, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda10;

    invoke-direct {v5, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda10;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    .line 330
    .local v4, "receiverParameter":Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v6

    invoke-direct {p0, v6, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v6

    .line 331
    .local v6, "thrownExceptions":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v7

    .line 332
    .local v7, "typeParameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v8

    .line 333
    .local v8, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v9

    new-instance v10, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda12;

    invoke-direct {v10, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda12;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v9, v10}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v9

    invoke-virtual {v9, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 334
    .local v9, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 336
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    .line 337
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    .line 338
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    .line 339
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    .line 340
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->setReceiverParameter(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    .line 341
    invoke-virtual {p1, v6}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->setThrownExceptions(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    .line 342
    invoke-virtual {p1, v7}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->setTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;

    .line 343
    invoke-virtual {p1, v8}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    .line 344
    invoke-virtual {p1, v9}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 345
    return-object p1

    .line 335
    :cond_1
    :goto_0
    return-object v5
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 397
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 398
    .local v0, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getClassBody()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 399
    .local v1, "classBody":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 400
    .local v2, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 401
    .local v3, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda7;

    invoke-direct {v5, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda7;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 402
    .local v4, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v2, :cond_0

    .line 403
    return-object v5

    .line 404
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->setArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    .line 405
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->setClassBody(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    .line 406
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;

    .line 407
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    .line 408
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 409
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 8
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 414
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 415
    .local v0, "entries":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getImplementedTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 416
    .local v1, "implementedTypes":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getMembers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 417
    .local v2, "members":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 418
    .local v3, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v4

    invoke-virtual {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 419
    .local v4, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v5

    .line 420
    .local v5, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda45;

    invoke-direct {v7, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda45;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    const/4 v7, 0x0

    invoke-virtual {v6, v7}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 421
    .local v6, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v4, :cond_0

    .line 422
    return-object v7

    .line 423
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->setEntries(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    .line 424
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->setImplementedTypes(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;

    .line 425
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->setMembers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    .line 426
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    .line 427
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    .line 428
    invoke-virtual {p1, v5}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    .line 429
    invoke-virtual {p1, v6}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 430
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 474
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 475
    .local v0, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 476
    .local v1, "variables":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 477
    .local v2, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda51;

    invoke-direct {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda51;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 478
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 479
    return-object v4

    .line 480
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    .line 481
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->setVariables(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;

    .line 482
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    .line 483
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 484
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 536
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 537
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 538
    .local v1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda93;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda93;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 539
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 540
    return-object v3

    .line 541
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;

    .line 542
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    .line 543
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 544
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 12
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 637
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda70;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda70;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 638
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 639
    .local v2, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 640
    .local v3, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v4

    invoke-virtual {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 641
    .local v4, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v5

    .line 642
    .local v5, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda71;

    invoke-direct {v7, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda71;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    .line 643
    .local v6, "receiverParameter":Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getThrownExceptions()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v7

    invoke-direct {p0, v7, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v7

    .line 644
    .local v7, "thrownExceptions":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v8

    invoke-direct {p0, v8, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v8

    .line 645
    .local v8, "typeParameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v9

    invoke-direct {p0, v9, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v9

    .line 646
    .local v9, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v10

    new-instance v11, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda72;

    invoke-direct {v11, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda72;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v10, v11}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 647
    .local v10, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v2, :cond_1

    if-nez v4, :cond_0

    goto :goto_0

    .line 649
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 650
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 651
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 652
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 653
    invoke-virtual {p1, v5}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 654
    invoke-virtual {p1, v6}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setReceiverParameter(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;)Lorg/checkerframework/com/github/javaparser/ast/body/CallableDeclaration;

    .line 655
    invoke-virtual {p1, v7}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setThrownExceptions(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 656
    invoke-virtual {p1, v8}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setTypeParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    .line 657
    invoke-virtual {p1, v9}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    .line 658
    invoke-virtual {p1, v10}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 659
    return-object p1

    .line 648
    :cond_1
    :goto_0
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 727
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 728
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 729
    .local v1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 730
    .local v2, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-virtual {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 731
    .local v3, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getVarArgsAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 732
    .local v4, "varArgsAnnotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getComment()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda95;

    invoke-direct {v6, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda95;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 733
    .local v5, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 735
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 736
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 737
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 738
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 739
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->setVarArgsAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 740
    invoke-virtual {p1, v5}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 741
    return-object p1

    .line 734
    :cond_1
    :goto_0
    return-object v6
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1218
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 1219
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 1220
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 1221
    .local v2, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getComment()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda91;

    invoke-direct {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda91;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1222
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 1224
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    .line 1225
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    .line 1226
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    .line 1227
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1228
    return-object p1

    .line 1223
    :cond_1
    :goto_0
    return-object v4
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 994
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getInitializer()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda84;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda84;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 995
    .local v0, "initializer":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 996
    .local v2, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v3

    invoke-virtual {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 997
    .local v3, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getComment()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda85;

    invoke-direct {v5, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda85;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 998
    .local v4, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v2, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 1000
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setInitializer(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 1001
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 1002
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 1003
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1004
    return-object p1

    .line 999
    :cond_1
    :goto_0
    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1113
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda117;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda117;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1114
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/BlockComment;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1115
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 569
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda80;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda80;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 570
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/JavadocComment;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 571
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1120
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda46;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda46;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1121
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/comments/LineComment;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1122
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 91
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getIndex()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 92
    .local v0, "index":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 93
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda89;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda89;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 94
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 96
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->setIndex(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;

    .line 97
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;

    .line 98
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayAccessExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 99
    return-object p1

    .line 95
    :cond_1
    :goto_0
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 104
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getElementType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 105
    .local v0, "elementType":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getInitializer()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda120;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda120;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    .line 106
    .local v1, "initializer":Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getLevels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 107
    .local v3, "levels":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/ArrayCreationLevel;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->getComment()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda11;

    invoke-direct {v5, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda11;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 108
    .local v4, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_0

    .line 110
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->setElementType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    .line 111
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->setInitializer(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    .line 112
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->setLevels(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;

    .line 113
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayCreationExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 114
    return-object p1

    .line 109
    :cond_1
    :goto_0
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 119
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getValues()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 120
    .local v0, "values":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda0;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda0;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 121
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->setValues(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;

    .line 122
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ArrayInitializerExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 123
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 141
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getTarget()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 142
    .local v0, "target":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 143
    .local v1, "value":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda87;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda87;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 144
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 146
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->setTarget(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    .line 147
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->setValue(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;

    .line 148
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/AssignExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 149
    return-object p1

    .line 145
    :cond_1
    :goto_0
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 154
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getLeft()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 155
    .local v0, "left":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getRight()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 156
    .local v1, "right":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda90;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda90;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 157
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 158
    return-object v1

    .line 159
    :cond_0
    if-nez v1, :cond_1

    .line 160
    return-object v0

    .line 161
    :cond_1
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->setLeft(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;

    .line 162
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->setRight(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;

    .line 163
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/BinaryExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 164
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 178
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda52;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda52;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 179
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/BooleanLiteralExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 180
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 194
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 195
    .local v0, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 196
    .local v1, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda32;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda32;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 197
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 199
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    .line 200
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;

    .line 201
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/CastExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 202
    return-object p1

    .line 198
    :cond_1
    :goto_0
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 220
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda27;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda27;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 221
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/CharLiteralExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 222
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 227
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 228
    .local v0, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda86;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda86;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 229
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 230
    return-object v2

    .line 231
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;

    .line 232
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ClassExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 233
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 310
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 311
    .local v0, "condition":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getElseExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 312
    .local v1, "elseExpr":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getThenExpr()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 313
    .local v2, "thenExpr":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda75;

    invoke-direct {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda75;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 314
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 316
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->setCondition(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    .line 317
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->setElseExpr(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    .line 318
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->setThenExpr(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;

    .line 319
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/ConditionalExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 320
    return-object p1

    .line 315
    :cond_1
    :goto_0
    return-object v4
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 372
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda14;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda14;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 373
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/DoubleLiteralExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 374
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 386
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getInner()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 387
    .local v0, "inner":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda104;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda104;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 388
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 389
    return-object v2

    .line 390
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->setInner(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;

    .line 391
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/EnclosedExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 392
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 459
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 460
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 461
    .local v1, "scope":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 462
    .local v2, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda115;

    invoke-direct {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda115;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 463
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 465
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    .line 466
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    .line 467
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;

    .line 468
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/FieldAccessExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 469
    return-object p1

    .line 464
    :cond_1
    :goto_0
    return-object v4
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 549
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 550
    .local v0, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    .line 551
    .local v1, "type":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda73;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda73;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 552
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 554
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;

    .line 555
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;

    .line 556
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/InstanceOfExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 557
    return-object p1

    .line 553
    :cond_1
    :goto_0
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 562
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda64;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda64;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 563
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/IntegerLiteralExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 564
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1044
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 1045
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 1046
    .local v1, "parameters":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda118;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda118;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1047
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 1048
    return-object v3

    .line 1049
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    .line 1050
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->setParameters(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;

    .line 1051
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/LambdaExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1052
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 589
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda23;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda23;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 590
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/LongLiteralExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 591
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 596
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 597
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda15;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda15;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 598
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 599
    return-object v2

    .line 600
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 601
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MarkerAnnotationExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 602
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 607
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 608
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 609
    .local v1, "value":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda26;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda26;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 610
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 612
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;

    .line 613
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->setValue(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;

    .line 614
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 615
    return-object p1

    .line 611
    :cond_1
    :goto_0
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 620
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 621
    .local v0, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 622
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getScope()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda113;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda113;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 623
    .local v2, "scope":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 624
    .local v4, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->getComment()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda114;

    invoke-direct {v6, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda114;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 625
    .local v5, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v1, :cond_0

    .line 626
    return-object v3

    .line 627
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    .line 628
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    .line 629
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    .line 630
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;

    .line 631
    invoke-virtual {p1, v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodCallExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 632
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1057
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getScope()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 1058
    .local v0, "scope":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 1059
    .local v1, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda1;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda1;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1060
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 1061
    return-object v3

    .line 1062
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;

    .line 1063
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;

    .line 1064
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/MethodReferenceExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1065
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Name;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 746
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getQualifier()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda111;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda111;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 747
    .local v0, "qualifier":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda112;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda112;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 748
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->setQualifier(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 749
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 750
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 664
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 665
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda94;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda94;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 666
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 667
    return-object v2

    .line 668
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;

    .line 669
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NameExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 670
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 675
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getPairs()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 676
    .local v0, "pairs":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/MemberValuePair;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 677
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda119;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda119;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 678
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v1, :cond_0

    .line 679
    return-object v3

    .line 680
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->setPairs(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;

    .line 681
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 682
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/NormalAnnotationExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 683
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 688
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda81;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda81;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 689
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/NullLiteralExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 690
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 8
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 695
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 696
    .local v0, "anonymousClassBody":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 697
    .local v1, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda5;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda5;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 698
    .local v2, "scope":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v4

    invoke-virtual {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 699
    .local v4, "type":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v5

    invoke-direct {p0, v5, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v5

    .line 700
    .local v5, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getComment()Ljava/util/Optional;

    move-result-object v6

    new-instance v7, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda6;

    invoke-direct {v7, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda6;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v6, v7}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 701
    .local v6, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v4, :cond_0

    .line 702
    return-object v3

    .line 703
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setAnonymousClassBody(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 704
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 705
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setScope(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 706
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 707
    invoke-virtual {p1, v5}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;

    .line 708
    invoke-virtual {p1, v6}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 709
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 764
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda116;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda116;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 765
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 766
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 830
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getMemberValue()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 831
    .local v0, "memberValue":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 832
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda106;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda106;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 833
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 835
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->setMemberValue(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;

    .line 836
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 837
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SingleMemberAnnotationExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 838
    return-object p1

    .line 834
    :cond_1
    :goto_0
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 843
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda100;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda100;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 844
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/StringLiteralExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 845
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 850
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda68;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda68;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 851
    .local v0, "typeName":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda69;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda69;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 852
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->setTypeName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;

    .line 853
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SuperExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 854
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1249
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 1250
    .local v0, "entries":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getSelector()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 1251
    .local v1, "selector":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda88;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda88;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1252
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v1, :cond_0

    .line 1253
    return-object v3

    .line 1254
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->setEntries(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;

    .line 1255
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->setSelector(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;

    .line 1256
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SwitchExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1257
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1273
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda53;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda53;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1274
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TextBlockLiteralExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1275
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 896
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getTypeName()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda33;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda33;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 897
    .local v0, "typeName":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda34;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda34;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 898
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->setTypeName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;

    .line 899
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ThisExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 900
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1070
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 1071
    .local v0, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda36;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda36;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1072
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 1073
    return-object v2

    .line 1074
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->setType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;

    .line 1075
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/TypeExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1076
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 959
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 960
    .local v0, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda22;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda22;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 961
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 962
    return-object v2

    .line 963
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;

    .line 964
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/UnaryExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 965
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 979
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 980
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 981
    .local v1, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 982
    .local v2, "variables":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getComment()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda83;

    invoke-direct {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda83;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 983
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 984
    return-object v4

    .line 985
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    .line 986
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    .line 987
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->setVariables(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    .line 988
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 989
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1134
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 1135
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getDirectives()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 1136
    .local v1, "directives":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 1137
    .local v2, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->getComment()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda98;

    invoke-direct {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda98;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1138
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v2, :cond_0

    .line 1139
    return-object v4

    .line 1140
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    .line 1141
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->setDirectives(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    .line 1142
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    .line 1143
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1144
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1161
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 1162
    .local v0, "moduleNames":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Name;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 1163
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda24;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda24;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1164
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v1, :cond_0

    .line 1165
    return-object v3

    .line 1166
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->setModuleNames(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;

    .line 1167
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;

    .line 1168
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleExportsDirective;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1169
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1198
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getModuleNames()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 1199
    .local v0, "moduleNames":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Name;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 1200
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda103;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda103;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1201
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v1, :cond_0

    .line 1202
    return-object v3

    .line 1203
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->setModuleNames(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;

    .line 1204
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;

    .line 1205
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleOpensDirective;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1206
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1174
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 1175
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getWith()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 1176
    .local v1, "with":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Name;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda40;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda40;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1177
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 1178
    return-object v3

    .line 1179
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;

    .line 1180
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->setWith(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;

    .line 1181
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleProvidesDirective;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1182
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1148
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getModifiers()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 1149
    .local v0, "modifiers":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/Modifier;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 1150
    .local v1, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda82;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda82;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1151
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v1, :cond_0

    .line 1152
    return-object v3

    .line 1153
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->setModifiers(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;

    .line 1154
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;

    .line 1155
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleRequiresDirective;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1156
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1187
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    .line 1188
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda74;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda74;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1189
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 1190
    return-object v2

    .line 1191
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/Name;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;

    .line 1192
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleUsesDirective;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1193
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 128
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getCheck()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 129
    .local v0, "check":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getMessage()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda41;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda41;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 130
    .local v1, "message":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda42;

    invoke-direct {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda42;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 131
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 132
    return-object v2

    .line 133
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->setCheck(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;

    .line 134
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->setMessage(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;

    .line 135
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/AssertStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 136
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 169
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 170
    .local v0, "statements":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda76;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda76;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 171
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->setStatements(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 172
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 173
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 185
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda97;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda97;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 186
    .local v0, "label":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda99;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda99;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 187
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->setLabel(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;

    .line 188
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BreakStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 189
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 207
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 208
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getParameter()Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 209
    .local v1, "parameter":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda58;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda58;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 210
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 212
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;

    .line 213
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->setParameter(Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;)Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;

    .line 214
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 215
    return-object p1

    .line 211
    :cond_1
    :goto_0
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 350
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getLabel()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda3;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda3;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 351
    .local v0, "label":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda4;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda4;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 352
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->setLabel(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;

    .line 353
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ContinueStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 354
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 359
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 360
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 361
    .local v1, "condition":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda37;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda37;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 362
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 364
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;

    .line 365
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->setCondition(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;

    .line 366
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/DoStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 367
    return-object p1

    .line 363
    :cond_1
    :goto_0
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 379
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda67;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda67;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 380
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/EmptyStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 381
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 435
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 436
    .local v0, "arguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getExpression()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda101;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda101;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 437
    .local v1, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getTypeArguments()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 438
    .local v3, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->getComment()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda102;

    invoke-direct {v5, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda102;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 439
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->setArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;

    .line 440
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;

    .line 441
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;

    .line 442
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 443
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 448
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 449
    .local v0, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda44;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda44;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 450
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 451
    return-object v2

    .line 452
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;

    .line 453
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExpressionStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 454
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 489
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 490
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getIterable()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 491
    .local v1, "iterable":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getVariable()Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    move-result-object v2

    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    .line 492
    .local v2, "variable":Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->getComment()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda60;

    invoke-direct {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda60;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 493
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    if-eqz v1, :cond_1

    if-nez v2, :cond_0

    goto :goto_0

    .line 495
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    .line 496
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->setIterable(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    .line 497
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->setVariable(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;

    .line 498
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForEachStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 499
    return-object p1

    .line 494
    :cond_1
    :goto_0
    return-object v4
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 504
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 505
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getCompare()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda30;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda30;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 506
    .local v1, "compare":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getInitialization()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 507
    .local v3, "initialization":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getUpdate()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 508
    .local v4, "update":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->getComment()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda31;

    invoke-direct {v6, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda31;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 509
    .local v5, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 510
    return-object v2

    .line 511
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    .line 512
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setCompare(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    .line 513
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setInitialization(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    .line 514
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setUpdate(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;

    .line 515
    invoke-virtual {p1, v5}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ForStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 516
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 521
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 522
    .local v0, "condition":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getElseStmt()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda43;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda43;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 523
    .local v1, "elseStmt":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getThenStmt()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v3

    invoke-virtual {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 524
    .local v3, "thenStmt":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->getComment()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda54;

    invoke-direct {v5, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda54;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 525
    .local v4, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    if-nez v3, :cond_0

    goto :goto_0

    .line 527
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->setCondition(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    .line 528
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->setElseStmt(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    .line 529
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->setThenStmt(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;

    .line 530
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/stmt/IfStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 531
    return-object p1

    .line 526
    :cond_1
    :goto_0
    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 576
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getLabel()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 577
    .local v0, "label":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getStatement()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 578
    .local v1, "statement":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda105;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda105;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 579
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 581
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->setLabel(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;

    .line 582
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->setStatement(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;

    .line 583
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LabeledStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 584
    return-object p1

    .line 580
    :cond_1
    :goto_0
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 933
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getClassDeclaration()Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;

    .line 934
    .local v0, "classDeclaration":Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda9;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda9;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 935
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 936
    return-object v2

    .line 937
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->setClassDeclaration(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;)Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;

    .line 938
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/LocalClassDeclarationStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 939
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 821
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getExpression()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda55;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda55;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 822
    .local v0, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda56;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda56;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 823
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;

    .line 824
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ReturnStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 825
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 859
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getLabels()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 860
    .local v0, "labels":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getStatements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 861
    .local v1, "statements":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda110;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda110;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 862
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->setLabels(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;

    .line 863
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->setStatements(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;

    .line 864
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 865
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 870
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getEntries()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 871
    .local v0, "entries":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchEntry;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getSelector()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 872
    .local v1, "selector":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda59;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda59;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 873
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v1, :cond_0

    .line 874
    return-object v3

    .line 875
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->setEntries(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;

    .line 876
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->setSelector(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;

    .line 877
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SwitchStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 878
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 883
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 884
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 885
    .local v1, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda29;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda29;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 886
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 888
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;

    .line 889
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;

    .line 890
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/SynchronizedStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 891
    return-object p1

    .line 887
    :cond_1
    :goto_0
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 905
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 906
    .local v0, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda13;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda13;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 907
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 908
    return-object v2

    .line 909
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;

    .line 910
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/ThrowStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 911
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 916
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getCatchClauses()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 917
    .local v0, "catchClauses":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/stmt/CatchClause;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getFinallyBlock()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda49;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda49;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 918
    .local v1, "finallyBlock":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getResources()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 919
    .local v3, "resources":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getTryBlock()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v4

    invoke-virtual {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 920
    .local v4, "tryBlock":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->getComment()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda50;

    invoke-direct {v6, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda50;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 921
    .local v5, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v4, :cond_0

    .line 922
    return-object v2

    .line 923
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setCatchClauses(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    .line 924
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setFinallyBlock(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    .line 925
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setResources(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    .line 926
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setTryBlock(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;)Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;

    .line 927
    invoke-virtual {p1, v5}, Lorg/checkerframework/com/github/javaparser/ast/stmt/TryStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 928
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 2
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1211
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->getComment()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda77;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda77;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1212
    .local v0, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/UnparsableStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1213
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1018
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    .line 1019
    .local v0, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getCondition()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v1

    invoke-virtual {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 1020
    .local v1, "condition":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda107;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda107;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1021
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-eqz v0, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 1023
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->setBody(Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;)Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;

    .line 1024
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->setCondition(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;

    .line 1025
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/WhileStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1026
    return-object p1

    .line 1022
    :cond_1
    :goto_0
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1262
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getExpression()Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 1263
    .local v0, "expression":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda66;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda66;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1264
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 1265
    return-object v2

    .line 1266
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->setExpression(Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;)Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;

    .line 1267
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/stmt/YieldStmt;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1268
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 4
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 771
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComponentType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 772
    .local v0, "componentType":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 773
    .local v1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda96;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda96;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 774
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 775
    return-object v3

    .line 776
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->setComponentType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    .line 777
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;

    .line 778
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 779
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 7
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 261
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 262
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getScope()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda38;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda38;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 263
    .local v1, "scope":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getTypeArguments()Ljava/util/Optional;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Ljava/util/Optional;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 264
    .local v3, "typeArguments":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    invoke-direct {p0, v4, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v4

    .line 265
    .local v4, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getComment()Ljava/util/Optional;

    move-result-object v5

    new-instance v6, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda39;

    invoke-direct {v6, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda39;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v5, v6}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 266
    .local v5, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 267
    return-object v2

    .line 268
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 269
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->setScope(Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;)Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 270
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->setTypeArguments(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 271
    invoke-virtual {p1, v4}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 272
    invoke-virtual {p1, v5}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 273
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 795
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 796
    .local v0, "elements":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 797
    .local v1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda48;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda48;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 798
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 799
    return-object v3

    .line 800
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->setElements(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;

    .line 801
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;

    .line 802
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/type/IntersectionType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 803
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 755
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 756
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda25;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda25;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 757
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;

    .line 758
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/PrimitiveType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 759
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 944
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getName()Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    move-result-object v0

    invoke-virtual {v0, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    .line 945
    .local v0, "name":Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 946
    .local v1, "typeBound":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    invoke-direct {p0, v2, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 947
    .local v2, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getComment()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda108;

    invoke-direct {v4, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda108;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v3

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 948
    .local v3, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    if-nez v0, :cond_0

    .line 949
    return-object v4

    .line 950
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->setName(Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;)Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;

    .line 951
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->setTypeBound(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;

    .line 952
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;

    .line 953
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 954
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 5
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 808
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getElements()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 809
    .local v0, "elements":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    invoke-direct {p0, v1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 810
    .local v1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->getComment()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda57;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda57;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 811
    .local v2, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 812
    return-object v3

    .line 813
    :cond_0
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->setElements(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;

    .line 814
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;

    .line 815
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/type/UnionType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 816
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 970
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 971
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda8;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 972
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;

    .line 973
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/UnknownType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 974
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VarType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/VarType;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/VarType;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1233
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 1234
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda109;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda109;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1235
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/VarType;

    .line 1236
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/VarType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1237
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 3
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1009
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-direct {p0, v0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 1010
    .local v0, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->getComment()Ljava/util/Optional;

    move-result-object v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda21;

    invoke-direct {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda21;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v1, v2}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1011
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;

    .line 1012
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/VoidType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1013
    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;
    .locals 6
    .param p1, "n"    # Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;
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

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;",
            "TA;)",
            "Lorg/checkerframework/com/github/javaparser/ast/visitor/Visitable;"
        }
    .end annotation

    .line 1031
    .local p0, "this":Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;, "Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor<TA;>;"
    .local p2, "arg":Ljava/lang/Object;, "TA;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getExtendedType()Ljava/util/Optional;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda61;

    invoke-direct {v1, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda61;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    .line 1032
    .local v0, "extendedType":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getSuperType()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda62;

    invoke-direct {v3, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda62;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;

    .line 1033
    .local v2, "superType":Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    invoke-direct {p0, v3, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;->modifyList(Lorg/checkerframework/com/github/javaparser/ast/NodeList;Ljava/lang/Object;)Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 1034
    .local v3, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->getComment()Ljava/util/Optional;

    move-result-object v4

    new-instance v5, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda63;

    invoke-direct {v5, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor$$ExternalSyntheticLambda63;-><init>(Lorg/checkerframework/com/github/javaparser/ast/visitor/ModifierVisitor;Ljava/lang/Object;)V

    invoke-virtual {v4, v5}, Ljava/util/Optional;->map(Ljava/util/function/Function;)Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;

    .line 1035
    .local v1, "comment":Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;
    invoke-virtual {p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setExtendedType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    .line 1036
    invoke-virtual {p1, v2}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setSuperType(Lorg/checkerframework/com/github/javaparser/ast/type/ReferenceType;)Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    .line 1037
    invoke-virtual {p1, v3}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;

    .line 1038
    invoke-virtual {p1, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/WildcardType;->setComment(Lorg/checkerframework/com/github/javaparser/ast/comments/Comment;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    .line 1039
    return-object p1
.end method
