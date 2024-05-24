.class public Lorg/checkerframework/javacutil/trees/DetachedVarSymbol;
.super Lcom/sun/tools/javac/code/Symbol$VarSymbol;
.source "DetachedVarSymbol.java"


# instance fields
.field protected decl:Lcom/sun/source/tree/VariableTree;


# direct methods
.method public constructor <init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V
    .locals 1
    .param p1, "flags"    # J
    .param p3, "name"    # Lcom/sun/tools/javac/util/Name;
    .param p4, "type"    # Lcom/sun/tools/javac/code/Type;
    .param p5, "owner"    # Lcom/sun/tools/javac/code/Symbol;

    .line 20
    invoke-direct/range {p0 .. p5}, Lcom/sun/tools/javac/code/Symbol$VarSymbol;-><init>(JLcom/sun/tools/javac/util/Name;Lcom/sun/tools/javac/code/Type;Lcom/sun/tools/javac/code/Symbol;)V

    .line 21
    const/4 v0, 0x0

    iput-object v0, p0, Lorg/checkerframework/javacutil/trees/DetachedVarSymbol;->decl:Lcom/sun/source/tree/VariableTree;

    .line 22
    return-void
.end method


# virtual methods
.method public getDeclaration()Lcom/sun/source/tree/VariableTree;
    .locals 1

    .line 31
    iget-object v0, p0, Lorg/checkerframework/javacutil/trees/DetachedVarSymbol;->decl:Lcom/sun/source/tree/VariableTree;

    return-object v0
.end method

.method public setDeclaration(Lcom/sun/source/tree/VariableTree;)V
    .locals 0
    .param p1, "decl"    # Lcom/sun/source/tree/VariableTree;

    .line 26
    iput-object p1, p0, Lorg/checkerframework/javacutil/trees/DetachedVarSymbol;->decl:Lcom/sun/source/tree/VariableTree;

    .line 27
    return-void
.end method
