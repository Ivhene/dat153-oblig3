.class public Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;
.super Ljava/lang/Object;
.source "ArrayType.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "ArrayBracketPair"
.end annotation


# instance fields
.field private annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation
.end field

.field private origin:Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

.field private tokenRange:Lorg/checkerframework/com/github/javaparser/TokenRange;


# direct methods
.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/TokenRange;Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;Lorg/checkerframework/com/github/javaparser/ast/NodeList;)V
    .locals 1
    .param p1, "tokenRange"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .param p2, "origin"    # Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "tokenRange",
            "origin",
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)V"
        }
    .end annotation

    .line 179
    .local p3, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 175
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 180
    invoke-virtual {p0, p1}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->setTokenRange(Lorg/checkerframework/com/github/javaparser/TokenRange;)Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;

    .line 181
    invoke-virtual {p0, p3}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;

    .line 182
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->setOrigin(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;)Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;

    .line 183
    return-void
.end method


# virtual methods
.method public getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;"
        }
    .end annotation

    .line 186
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    return-object v0
.end method

.method public getOrigin()Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;
    .locals 1

    .line 204
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->origin:Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    return-object v0
.end method

.method public getTokenRange()Ljava/util/Optional;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Optional<",
            "Lorg/checkerframework/com/github/javaparser/TokenRange;",
            ">;"
        }
    .end annotation

    .line 200
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->tokenRange:Lorg/checkerframework/com/github/javaparser/TokenRange;

    invoke-static {v0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object v0

    return-object v0
.end method

.method public setAnnotations(Lorg/checkerframework/com/github/javaparser/ast/NodeList;)Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "annotations"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/NodeList<",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;"
        }
    .end annotation

    .line 190
    .local p1, "annotations":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->annotations:Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 191
    return-object p0
.end method

.method public setOrigin(Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;)Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;
    .locals 1
    .param p1, "origin"    # Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "origin"
        }
    .end annotation

    .line 208
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->origin:Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$Origin;

    .line 209
    return-object p0
.end method

.method public setTokenRange(Lorg/checkerframework/com/github/javaparser/TokenRange;)Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;
    .locals 0
    .param p1, "range"    # Lorg/checkerframework/com/github/javaparser/TokenRange;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "range"
        }
    .end annotation

    .line 195
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/ast/type/ArrayType$ArrayBracketPair;->tokenRange:Lorg/checkerframework/com/github/javaparser/TokenRange;

    .line 196
    return-object p0
.end method
