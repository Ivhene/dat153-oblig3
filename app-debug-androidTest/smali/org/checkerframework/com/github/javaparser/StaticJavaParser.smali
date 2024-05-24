.class public final Lorg/checkerframework/com/github/javaparser/StaticJavaParser;
.super Ljava/lang/Object;
.source "StaticJavaParser.java"


# static fields
.field private static configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 52
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;-><init>()V

    sput-object v0, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    return-void
.end method

.method public static getConfiguration()Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .locals 1

    .line 61
    sget-object v0, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    return-object v0
.end method

.method private static handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/Node;",
            ">(",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "TT;>;)TT;"
        }
    .end annotation

    .line 409
    .local p0, "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<TT;>;"
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->isSuccessful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 410
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/Node;

    return-object v0

    .line 412
    :cond_0
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ParseProblemException;

    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getProblems()Ljava/util/List;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/ParseProblemException;-><init>(Ljava/util/List;)V

    throw v0
.end method

.method private static newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;
    .locals 2

    .line 73
    new-instance v0, Lorg/checkerframework/com/github/javaparser/JavaParser;

    sget-object v1, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-direct {v0, v1}, Lorg/checkerframework/com/github/javaparser/JavaParser;-><init>(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    return-object v0
.end method

.method public static parse(Ljava/io/File;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 169
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Ljava/io/File;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public static parse(Ljava/io/File;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "file",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 142
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Ljava/io/File;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "in"
        }
    .end annotation

    .line 113
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Ljava/io/InputStream;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public static parse(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "in",
            "encoding"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 88
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public static parse(Ljava/io/Reader;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .line 345
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Ljava/io/Reader;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public static parse(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 1
    .param p0, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 369
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public static parse(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 226
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public static parse(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 199
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public static parseAnnotation(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .locals 1
    .param p0, "annotation"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "annotation"
        }
    .end annotation

    .line 448
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseAnnotation(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    return-object v0
.end method

.method public static parseAnnotationBodyDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .locals 1
    .param p0, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;"
        }
    .end annotation

    .line 460
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseAnnotationBodyDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    return-object v0
.end method

.method public static parseBlock(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .locals 1
    .param p0, "blockStatement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "blockStatement"
        }
    .end annotation

    .line 393
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseBlock(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    return-object v0
.end method

.method public static parseBodyDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;
    .locals 1
    .param p0, "body"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "body"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;"
        }
    .end annotation

    .line 472
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseBodyDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    return-object v0
.end method

.method public static parseClassOrInterfaceType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 483
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseClassOrInterfaceType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    return-object v0
.end method

.method public static parseExplicitConstructorInvocationStmt(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;
    .locals 1
    .param p0, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "statement"
        }
    .end annotation

    .line 529
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseExplicitConstructorInvocationStmt(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/ExplicitConstructorInvocationStmt;

    return-object v0
.end method

.method public static parseExpression(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    .locals 1
    .param p0, "expression"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "expression"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;",
            ">(",
            "Ljava/lang/String;",
            ")TT;"
        }
    .end annotation

    .line 436
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseExpression(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    return-object v0
.end method

.method public static parseImport(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .locals 1
    .param p0, "importDeclaration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "importDeclaration"
        }
    .end annotation

    .line 424
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseImport(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;

    return-object v0
.end method

.method public static parseJavadoc(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;
    .locals 1
    .param p0, "content"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "content"
        }
    .end annotation

    .line 518
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/JavadocParser;->parse(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/javadoc/Javadoc;

    move-result-object v0

    return-object v0
.end method

.method public static parseMethodDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .locals 1
    .param p0, "methodDeclaration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "methodDeclaration"
        }
    .end annotation

    .line 632
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseMethodDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;

    return-object v0
.end method

.method public static parseModuleDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;
    .locals 1
    .param p0, "moduleDeclaration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moduleDeclaration"
        }
    .end annotation

    .line 596
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseModuleDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDeclaration;

    return-object v0
.end method

.method public static parseModuleDirective(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;
    .locals 1
    .param p0, "moduleDirective"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "moduleDirective"
        }
    .end annotation

    .line 608
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseModuleDirective(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/modules/ModuleDirective;

    return-object v0
.end method

.method public static parseName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/Name;
    .locals 1
    .param p0, "qualifiedName"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "qualifiedName"
        }
    .end annotation

    .line 540
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/Name;

    return-object v0
.end method

.method public static parsePackageDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    .locals 1
    .param p0, "packageDeclaration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageDeclaration"
        }
    .end annotation

    .line 573
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parsePackageDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    return-object v0
.end method

.method public static parseParameter(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .locals 1
    .param p0, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parameter"
        }
    .end annotation

    .line 562
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseParameter(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    return-object v0
.end method

.method public static parseResource(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "classLoader",
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 318
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseResource(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public static parseResource(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 254
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseResource(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public static parseResource(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 286
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseResource(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method public static parseResourceStubUnit(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .locals 1
    .param p0, "classLoader"    # Ljava/lang/ClassLoader;
    .param p1, "path"    # Ljava/lang/String;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10,
            0x0
        }
        names = {
            "classLoader",
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 333
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseResourceStubUnit(Ljava/lang/ClassLoader;Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    return-object v0
.end method

.method public static parseResourceStubUnit(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 269
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseResourceStubUnit(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    return-object v0
.end method

.method public static parseResourceStubUnit(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .locals 1
    .param p0, "path"    # Ljava/lang/String;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 301
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseResourceStubUnit(Ljava/lang/String;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    return-object v0
.end method

.method public static parseSimpleName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "name"
        }
    .end annotation

    .line 551
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseSimpleName(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/SimpleName;

    return-object v0
.end method

.method public static parseStatement(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;
    .locals 1
    .param p0, "statement"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "statement"
        }
    .end annotation

    .line 405
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseStatement(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/stmt/Statement;

    return-object v0
.end method

.method public static parseStubUnit(Ljava/io/File;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "file"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 183
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseStubUnit(Ljava/io/File;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    return-object v0
.end method

.method public static parseStubUnit(Ljava/io/File;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .locals 1
    .param p0, "file"    # Ljava/io/File;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "file",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .line 156
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseStubUnit(Ljava/io/File;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    return-object v0
.end method

.method public static parseStubUnit(Ljava/io/InputStream;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "in"
        }
    .end annotation

    .line 126
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseStubUnit(Ljava/io/InputStream;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    return-object v0
.end method

.method public static parseStubUnit(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .locals 1
    .param p0, "in"    # Ljava/io/InputStream;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x0
        }
        names = {
            "in",
            "encoding"
        }
    .end annotation

    .line 101
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseStubUnit(Ljava/io/InputStream;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    return-object v0
.end method

.method public static parseStubUnit(Ljava/io/Reader;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .locals 1
    .param p0, "reader"    # Ljava/io/Reader;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "reader"
        }
    .end annotation

    .line 357
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseStubUnit(Ljava/io/Reader;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    return-object v0
.end method

.method public static parseStubUnit(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .locals 1
    .param p0, "code"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "code"
        }
    .end annotation

    .line 381
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseStubUnit(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    return-object v0
.end method

.method public static parseStubUnit(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "path"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 240
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseStubUnit(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    return-object v0
.end method

.method public static parseStubUnit(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10,
            0x10
        }
        names = {
            "path",
            "encoding"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 213
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0, p1}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseStubUnit(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    return-object v0
.end method

.method public static parseType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .locals 1
    .param p0, "type"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "type"
        }
    .end annotation

    .line 494
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseType(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    return-object v0
.end method

.method public static parseTypeDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;
    .locals 1
    .param p0, "typeDeclaration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeDeclaration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<",
            "*>;"
        }
    .end annotation

    .line 584
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseTypeDeclaration(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    return-object v0
.end method

.method public static parseTypeParameter(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
    .locals 1
    .param p0, "typeParameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "typeParameter"
        }
    .end annotation

    .line 620
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseTypeParameter(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;

    return-object v0
.end method

.method public static parseVariableDeclarationExpr(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    .locals 1
    .param p0, "declaration"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "declaration"
        }
    .end annotation

    .line 506
    invoke-static {}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->newParser()Lorg/checkerframework/com/github/javaparser/JavaParser;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parseVariableDeclarationExpr(Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->handleResult(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/Node;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;

    return-object v0
.end method

.method public static setConfiguration(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 0
    .param p0, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "configuration"
        }
    .end annotation

    .line 69
    sput-object p0, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->configuration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    .line 70
    return-void
.end method
