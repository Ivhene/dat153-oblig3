.class public Lorg/checkerframework/framework/stub/ToIndexFileConverter;
.super Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorAdapter;
.source "ToIndexFileConverter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorAdapter<",
        "Ljava/lang/Void;",
        "Lscenelib/annotations/el/AElement;",
        ">;"
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static importPattern:Ljava/util/regex/Pattern;


# instance fields
.field private final imports:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final pkgName:Ljava/lang/String;

.field private final scene:Lscenelib/annotations/el/AScene;


# direct methods
.method private static synthetic $closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    .locals 1
    .param p0, "x0"    # Ljava/lang/Throwable;
    .param p1, "x1"    # Ljava/lang/AutoCloseable;

    .line 165
    if-eqz p0, :cond_0

    :try_start_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-virtual {p0, v0}, Ljava/lang/Throwable;->addSuppressed(Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    invoke-interface {p1}, Ljava/lang/AutoCloseable;->close()V

    :goto_0
    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 85
    nop

    .line 89
    nop

    .line 90
    const-string v0, "\\bimport *+((?:[^.]*+[.] *+)*+[^ ]*) *+;"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->importPattern:Ljava/util/regex/Pattern;

    .line 89
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/util/List;Lscenelib/annotations/el/AScene;)V
    .locals 5
    .param p1, "pkgDecl"    # Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    .param p3, "scene"    # Lscenelib/annotations/el/AScene;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;",
            ">;",
            "Lscenelib/annotations/el/AScene;",
            ")V"
        }
    .end annotation

    .line 111
    .local p2, "importDecls":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;>;"
    invoke-direct {p0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorAdapter;-><init>()V

    .line 112
    iput-object p3, p0, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->scene:Lscenelib/annotations/el/AScene;

    .line 113
    if-nez p1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    iput-object v0, p0, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->pkgName:Ljava/lang/String;

    .line 114
    if-nez p2, :cond_1

    .line 115
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->imports:Ljava/util/List;

    goto :goto_2

    .line 117
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 118
    .local v0, "imps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;

    .line 119
    .local v2, "decl":Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->isStatic()Z

    move-result v3

    if-nez v3, :cond_2

    .line 120
    sget-object v3, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->importPattern:Ljava/util/regex/Pattern;

    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 121
    .local v3, "m":Ljava/util/regex/Matcher;
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 122
    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 123
    .local v4, "s":Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 124
    invoke-virtual {v0, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 128
    .end local v2    # "decl":Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;
    .end local v3    # "m":Ljava/util/regex/Matcher;
    .end local v4    # "s":Ljava/lang/String;
    :cond_2
    goto :goto_1

    .line 129
    :cond_3
    invoke-virtual {v0}, Ljava/util/ArrayList;->trimToSize()V

    .line 130
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->imports:Ljava/util/List;

    .line 132
    .end local v0    # "imps":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    :goto_2
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Lscenelib/annotations/Annotation;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 85
    invoke-static {p0}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->extractAnnotation(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Lscenelib/annotations/Annotation;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$100(Lorg/checkerframework/framework/stub/ToIndexFileConverter;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/framework/stub/ToIndexFileConverter;
    .param p1, "x1"    # Ljava/lang/String;

    .line 85
    invoke-direct {p0, p1}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->resolve(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static convert(Lscenelib/annotations/el/AScene;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    .locals 5
    .param p0, "scene"    # Lscenelib/annotations/el/AScene;
    .param p1, "in"    # Ljava/io/InputStream;
    .param p2, "out"    # Ljava/io/OutputStream;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lscenelib/annotations/el/DefException;,
            Lorg/checkerframework/com/github/javaparser/ParseException;
        }
    .end annotation

    .line 187
    :try_start_0
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/StaticJavaParser;->parseStubUnit(Ljava/io/InputStream;)Lorg/checkerframework/com/github/javaparser/ast/StubUnit;

    move-result-object v0
    :try_end_0
    .catch Lorg/checkerframework/com/github/javaparser/ParseProblemException; {:try_start_0 .. :try_end_0} :catch_0

    .line 195
    .local v0, "iu":Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    nop

    .line 196
    invoke-static {v0, p0}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->extractScene(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Lscenelib/annotations/el/AScene;)V

    .line 197
    new-instance v1, Ljava/io/BufferedWriter;

    new-instance v2, Ljava/io/OutputStreamWriter;

    invoke-direct {v2, p2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    .line 198
    .local v1, "w":Ljava/io/Writer;
    :try_start_1
    invoke-static {p0, v1}, Lscenelib/annotations/io/IndexFileWriter;->write(Lscenelib/annotations/el/AScene;Ljava/io/Writer;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 199
    const/4 v2, 0x0

    invoke-static {v2, v1}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .line 200
    .end local v1    # "w":Ljava/io/Writer;
    return-void

    .line 197
    .restart local v1    # "w":Ljava/io/Writer;
    :catchall_0
    move-exception v2

    .end local v0    # "iu":Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .end local v1    # "w":Ljava/io/Writer;
    .end local p0    # "scene":Lscenelib/annotations/el/AScene;
    .end local p1    # "in":Ljava/io/InputStream;
    .end local p2    # "out":Ljava/io/OutputStream;
    :try_start_2
    throw v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 199
    .restart local v0    # "iu":Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .restart local v1    # "w":Ljava/io/Writer;
    .restart local p0    # "scene":Lscenelib/annotations/el/AScene;
    .restart local p1    # "in":Ljava/io/InputStream;
    .restart local p2    # "out":Ljava/io/OutputStream;
    :catchall_1
    move-exception v3

    invoke-static {v2, v1}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    throw v3

    .line 188
    .end local v0    # "iu":Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .end local v1    # "w":Ljava/io/Writer;
    :catch_0
    move-exception v0

    .line 189
    .local v0, "e":Lorg/checkerframework/com/github/javaparser/ParseProblemException;
    const/4 v1, 0x0

    .line 190
    .local v1, "iu":Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    new-instance v2, Lorg/checkerframework/javacutil/BugInCF;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ToIndexFileConverter: exception from JavaParser.parseStubUnit for InputStream."

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 192
    invoke-static {}, Ljava/lang/System;->lineSeparator()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Problem message with problems encountered: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 194
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParseProblemException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lorg/checkerframework/javacutil/BugInCF;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method private static extractAnnotation(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Lscenelib/annotations/Annotation;
    .locals 4
    .param p0, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 234
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    .line 238
    .local v0, "exprName":Ljava/lang/String;
    const-string v1, "+"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 239
    const/4 v1, 0x0

    return-object v1

    .line 241
    :cond_0
    new-instance v1, Lscenelib/annotations/el/AnnotationDef;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ToIndexFileConverter.extractAnnotation("

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ")"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v0, v2}, Lscenelib/annotations/el/AnnotationDef;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 243
    .local v1, "def":Lscenelib/annotations/el/AnnotationDef;
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscenelib/annotations/el/AnnotationDef;->setFieldTypes(Ljava/util/Map;)V

    .line 244
    new-instance v2, Lscenelib/annotations/Annotation;

    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    invoke-direct {v2, v1, v3}, Lscenelib/annotations/Annotation;-><init>(Lscenelib/annotations/el/AnnotationDef;Ljava/util/Map;)V

    return-object v2
.end method

.method private static extractScene(Lorg/checkerframework/com/github/javaparser/ast/StubUnit;Lscenelib/annotations/el/AScene;)V
    .locals 12
    .param p0, "iu"    # Lorg/checkerframework/com/github/javaparser/ast/StubUnit;
    .param p1, "scene"    # Lscenelib/annotations/el/AScene;

    .line 210
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ast/StubUnit;->getCompilationUnits()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 211
    .local v1, "cu":Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getTypes()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 212
    .local v2, "typeDecls":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;>;"
    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/Optional;->isPresent()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 213
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getImports()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 214
    .local v3, "impDecls":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;>;"
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getPackageDeclaration()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;

    .line 215
    .local v4, "pkgDecl":Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;

    .line 216
    .local v6, "typeDecl":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;"
    new-instance v7, Lorg/checkerframework/framework/stub/ToIndexFileConverter;

    invoke-direct {v7, v4, v3, p1}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;-><init>(Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;Ljava/util/List;Lscenelib/annotations/el/AScene;)V

    .line 218
    .local v7, "converter":Lorg/checkerframework/framework/stub/ToIndexFileConverter;
    iget-object v8, v7, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->pkgName:Ljava/lang/String;

    .line 219
    .local v8, "pkgName":Ljava/lang/String;
    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v9

    .line 220
    .local v9, "name":Ljava/lang/String;
    if-eqz v8, :cond_0

    .line 221
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 223
    :cond_0
    iget-object v10, p1, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v10, v9}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lscenelib/annotations/el/AElement;

    invoke-virtual {v6, v7, v10}, Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 224
    .end local v6    # "typeDecl":Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;"
    .end local v7    # "converter":Lorg/checkerframework/framework/stub/ToIndexFileConverter;
    .end local v8    # "pkgName":Ljava/lang/String;
    .end local v9    # "name":Ljava/lang/String;
    goto :goto_1

    .line 226
    .end local v1    # "cu":Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .end local v2    # "typeDecls":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/TypeDeclaration<*>;>;"
    .end local v3    # "impDecls":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/ImportDeclaration;>;"
    .end local v4    # "pkgDecl":Lorg/checkerframework/com/github/javaparser/ast/PackageDeclaration;
    :cond_1
    goto :goto_0

    .line 227
    :cond_2
    return-void
.end method

.method private getJVML(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Ljava/lang/String;
    .locals 2
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 548
    new-instance v0, Lorg/checkerframework/framework/stub/ToIndexFileConverter$2;

    invoke-direct {v0, p0}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$2;-><init>(Lorg/checkerframework/framework/stub/ToIndexFileConverter;)V

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0
.end method

.method private static loadClass(Ljava/lang/String;)Ljava/lang/Class;
    .locals 2
    .param p0, "className"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation

    .line 693
    if-eqz p0, :cond_0

    .line 695
    const/4 v0, 0x0

    const/4 v1, 0x0

    :try_start_0
    invoke-static {p0, v0, v1}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 696
    :catch_0
    move-exception v0

    .line 697
    .local v0, "e":Ljava/lang/ClassNotFoundException;
    return-object v1

    .line 693
    .end local v0    # "e":Ljava/lang/ClassNotFoundException;
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method

.method public static main([Ljava/lang/String;)V
    .locals 9
    .param p0, "args"    # [Ljava/lang/String;

    .line 142
    array-length v0, p0

    const/4 v1, 0x1

    if-ge v0, v1, :cond_0

    .line 143
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "usage: java ToIndexFileConverter myfile.jaif [stubfile...]"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 144
    sget-object v0, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "(myfile.jaif contains needed annotation definitions)"

    invoke-virtual {v0, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 145
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 148
    :cond_0
    new-instance v0, Lscenelib/annotations/el/AScene;

    invoke-direct {v0}, Lscenelib/annotations/el/AScene;-><init>()V

    .line 151
    .local v0, "scene":Lscenelib/annotations/el/AScene;
    const/4 v2, 0x0

    :try_start_0
    aget-object v3, p0, v2

    invoke-static {v3, v0}, Lscenelib/annotations/io/IndexFileParser;->parseFile(Ljava/lang/String;Lscenelib/annotations/el/AScene;)Ljava/util/Map;

    .line 153
    array-length v3, p0

    if-ne v3, v1, :cond_1

    .line 154
    sget-object v2, Ljava/lang/System;->in:Ljava/io/InputStream;

    sget-object v3, Ljava/lang/System;->out:Ljava/io/PrintStream;

    invoke-static {v0, v2, v3}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->convert(Lscenelib/annotations/el/AScene;Ljava/io/InputStream;Ljava/io/OutputStream;)V

    .line 155
    return-void

    .line 158
    :cond_1
    const/4 v3, 0x1

    .local v3, "i":I
    :goto_0
    array-length v4, p0

    if-ge v3, v4, :cond_3

    .line 159
    aget-object v4, p0, v3

    .line 160
    .local v4, "f0":Ljava/lang/String;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 161
    const-string v6, ".astub"

    invoke-virtual {v4, v6}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_2

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    add-int/lit8 v6, v6, -0x6

    invoke-virtual {v4, v2, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    goto :goto_1

    :cond_2
    move-object v6, v4

    :goto_1
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".jaif"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 162
    .local v5, "f1":Ljava/lang/String;
    new-instance v6, Ljava/io/FileInputStream;

    invoke-direct {v6, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 163
    .local v6, "in":Ljava/io/InputStream;
    :try_start_1
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    .line 162
    .local v7, "out":Ljava/io/OutputStream;
    nop

    .line 164
    :try_start_2
    new-instance v8, Lscenelib/annotations/el/AScene;

    invoke-direct {v8, v0}, Lscenelib/annotations/el/AScene;-><init>(Lscenelib/annotations/el/AScene;)V

    invoke-static {v8, v6, v7}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->convert(Lscenelib/annotations/el/AScene;Ljava/io/InputStream;Ljava/io/OutputStream;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 165
    const/4 v8, 0x0

    :try_start_3
    invoke-static {v8, v7}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    .end local v7    # "out":Ljava/io/OutputStream;
    :try_start_4
    invoke-static {v8, v6}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    .line 158
    .end local v4    # "f0":Ljava/lang/String;
    .end local v5    # "f1":Ljava/lang/String;
    .end local v6    # "in":Ljava/io/InputStream;
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 162
    .restart local v4    # "f0":Ljava/lang/String;
    .restart local v5    # "f1":Ljava/lang/String;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    :catchall_0
    move-exception v2

    .end local v0    # "scene":Lscenelib/annotations/el/AScene;
    .end local v3    # "i":I
    .end local v4    # "f0":Ljava/lang/String;
    .end local v5    # "f1":Ljava/lang/String;
    .end local v6    # "in":Ljava/io/InputStream;
    .end local v7    # "out":Ljava/io/OutputStream;
    .end local p0    # "args":[Ljava/lang/String;
    :try_start_5
    throw v2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    .line 165
    .restart local v0    # "scene":Lscenelib/annotations/el/AScene;
    .restart local v3    # "i":I
    .restart local v4    # "f0":Ljava/lang/String;
    .restart local v5    # "f1":Ljava/lang/String;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local v7    # "out":Ljava/io/OutputStream;
    .restart local p0    # "args":[Ljava/lang/String;
    :catchall_1
    move-exception v8

    :try_start_6
    invoke-static {v2, v7}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "scene":Lscenelib/annotations/el/AScene;
    .end local v3    # "i":I
    .end local v4    # "f0":Ljava/lang/String;
    .end local v5    # "f1":Ljava/lang/String;
    .end local v6    # "in":Ljava/io/InputStream;
    .end local p0    # "args":[Ljava/lang/String;
    throw v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_2

    .line 162
    .end local v7    # "out":Ljava/io/OutputStream;
    .restart local v0    # "scene":Lscenelib/annotations/el/AScene;
    .restart local v3    # "i":I
    .restart local v4    # "f0":Ljava/lang/String;
    .restart local v5    # "f1":Ljava/lang/String;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local p0    # "args":[Ljava/lang/String;
    :catchall_2
    move-exception v2

    .end local v0    # "scene":Lscenelib/annotations/el/AScene;
    .end local v3    # "i":I
    .end local v4    # "f0":Ljava/lang/String;
    .end local v5    # "f1":Ljava/lang/String;
    .end local v6    # "in":Ljava/io/InputStream;
    .end local p0    # "args":[Ljava/lang/String;
    :try_start_7
    throw v2
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    .line 165
    .restart local v0    # "scene":Lscenelib/annotations/el/AScene;
    .restart local v3    # "i":I
    .restart local v4    # "f0":Ljava/lang/String;
    .restart local v5    # "f1":Ljava/lang/String;
    .restart local v6    # "in":Ljava/io/InputStream;
    .restart local p0    # "args":[Ljava/lang/String;
    :catchall_3
    move-exception v7

    :try_start_8
    invoke-static {v2, v6}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->$closeResource(Ljava/lang/Throwable;Ljava/lang/AutoCloseable;)V

    .end local v0    # "scene":Lscenelib/annotations/el/AScene;
    .end local p0    # "args":[Ljava/lang/String;
    throw v7
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    .line 170
    .end local v3    # "i":I
    .end local v4    # "f0":Ljava/lang/String;
    .end local v5    # "f1":Ljava/lang/String;
    .end local v6    # "in":Ljava/io/InputStream;
    .restart local v0    # "scene":Lscenelib/annotations/el/AScene;
    .restart local p0    # "args":[Ljava/lang/String;
    :cond_3
    goto :goto_2

    .line 167
    :catchall_4
    move-exception v2

    .line 168
    .local v2, "e":Ljava/lang/Throwable;
    invoke-virtual {v2}, Ljava/lang/Throwable;->printStackTrace()V

    .line 169
    invoke-static {v1}, Ljava/lang/System;->exit(I)V

    .line 171
    .end local v2    # "e":Ljava/lang/Throwable;
    :goto_2
    return-void
.end method

.method private static mergeImport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 7
    .param p0, "importName"    # Ljava/lang/String;
    .param p1, "className"    # Ljava/lang/String;

    .line 663
    invoke-virtual {p0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 666
    :cond_0
    const-string v0, "\\."

    invoke-virtual {p0, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    .line 667
    .local v1, "importSplit":[Ljava/lang/String;
    invoke-virtual {p1, v0}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 668
    .local v0, "classSplit":[Ljava/lang/String;
    array-length v2, v1

    add-int/lit8 v2, v2, -0x1

    aget-object v2, v1, v2

    .line 669
    .local v2, "importEnd":Ljava/lang/String;
    const-string v3, "*"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 670
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    const/4 v5, 0x0

    invoke-virtual {p0, v5, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 675
    :cond_1
    array-length v3, v1

    .line 676
    .local v3, "i":I
    array-length v4, v0

    sub-int v4, v3, v4

    .line 677
    .local v4, "n":I
    :cond_2
    add-int/lit8 v3, v3, -0x1

    if-lt v3, v4, :cond_3

    .line 678
    sub-int v5, v3, v4

    aget-object v5, v0, v5

    aget-object v6, v1, v3

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    .line 679
    const/4 v5, 0x0

    return-object v5

    .line 682
    :cond_3
    return-object p0

    .line 664
    .end local v0    # "classSplit":[Ljava/lang/String;
    .end local v1    # "importSplit":[Ljava/lang/String;
    .end local v2    # "importEnd":Ljava/lang/String;
    .end local v3    # "i":I
    .end local v4    # "n":I
    :cond_4
    :goto_0
    return-object p1
.end method

.method private resolve(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "className"    # Ljava/lang/String;

    .line 624
    iget-object v0, p0, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->pkgName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 625
    invoke-static {v0, p1}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->addPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 626
    .local v0, "qualifiedName":Ljava/lang/String;
    invoke-static {v0}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 627
    return-object v0

    .line 634
    .end local v0    # "qualifiedName":Ljava/lang/String;
    :cond_0
    const-string v0, "java.lang"

    invoke-static {v0, p1}, Lorg/checkerframework/org/plumelib/reflection/Signatures;->addPackage(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 635
    .restart local v0    # "qualifiedName":Ljava/lang/String;
    invoke-static {v0}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 636
    return-object v0

    .line 640
    .end local v0    # "qualifiedName":Ljava/lang/String;
    :cond_1
    iget-object v0, p0, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->imports:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 641
    .local v1, "declName":Ljava/lang/String;
    invoke-static {v1, p1}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->mergeImport(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 642
    .local v2, "qualifiedName":Ljava/lang/String;
    invoke-static {v2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 643
    return-object v2

    .line 645
    .end local v1    # "declName":Ljava/lang/String;
    .end local v2    # "qualifiedName":Ljava/lang/String;
    :cond_2
    goto :goto_0

    .line 647
    :cond_3
    invoke-static {p1}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 648
    return-object p1

    .line 651
    :cond_4
    const/4 v0, 0x0

    return-object v0
.end method

.method private visitDecl(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;Lscenelib/annotations/el/ADeclaration;)Ljava/lang/Void;
    .locals 5
    .param p2, "elem"    # Lscenelib/annotations/el/ADeclaration;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<",
            "*>;",
            "Lscenelib/annotations/el/ADeclaration;",
            ")",
            "Ljava/lang/Void;"
        }
    .end annotation

    .line 437
    .local p1, "decl":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 438
    .local v0, "annoExprs":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    if-eqz v0, :cond_0

    .line 439
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 440
    .local v2, "annoExpr":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    invoke-static {v2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->extractAnnotation(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Lscenelib/annotations/Annotation;

    move-result-object v3

    .line 441
    .local v3, "anno":Lscenelib/annotations/Annotation;
    iget-object v4, p2, Lscenelib/annotations/el/ADeclaration;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 442
    .end local v2    # "annoExpr":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .end local v3    # "anno":Lscenelib/annotations/Annotation;
    goto :goto_0

    .line 444
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private static visitInnerTypes(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lscenelib/annotations/el/ATypeElement;)Ljava/lang/Void;
    .locals 2
    .param p0, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p1, "elem"    # Lscenelib/annotations/el/ATypeElement;

    .line 464
    new-instance v0, Lorg/checkerframework/framework/stub/ToIndexFileConverter$1;

    invoke-direct {v0, p1}, Lorg/checkerframework/framework/stub/ToIndexFileConverter$1;-><init>(Lscenelib/annotations/el/ATypeElement;)V

    sget-object v1, Lscenelib/annotations/el/InnerTypeLocation;->EMPTY_INNER_TYPE_LOCATION:Lscenelib/annotations/el/InnerTypeLocation;

    invoke-virtual {p0, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method private visitType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lscenelib/annotations/el/ATypeElement;)Ljava/lang/Void;
    .locals 5
    .param p1, "type"    # Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .param p2, "elem"    # Lscenelib/annotations/el/ATypeElement;

    .line 449
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 450
    .local v0, "exprs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    if-eqz v0, :cond_1

    .line 451
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 452
    .local v2, "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    invoke-static {v2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->extractAnnotation(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Lscenelib/annotations/Annotation;

    move-result-object v3

    .line 453
    .local v3, "anno":Lscenelib/annotations/Annotation;
    if-eqz v3, :cond_0

    .line 454
    iget-object v4, p2, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v4, v3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 456
    .end local v2    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .end local v3    # "anno":Lscenelib/annotations/Annotation;
    :cond_0
    goto :goto_0

    .line 458
    :cond_1
    invoke-static {p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visitInnerTypes(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lscenelib/annotations/el/ATypeElement;)Ljava/lang/Void;

    .line 459
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 85
    check-cast p2, Lscenelib/annotations/el/AElement;

    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 1
    .param p1, "decl"    # Lorg/checkerframework/com/github/javaparser/ast/body/AnnotationDeclaration;
    .param p2, "elem"    # Lscenelib/annotations/el/AElement;

    .line 249
    const/4 v0, 0x0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 1
    .param p1, "decl"    # Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;
    .param p2, "elem"    # Lscenelib/annotations/el/AElement;

    .line 260
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/ADeclaration;

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visitDecl(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;Lscenelib/annotations/el/ADeclaration;)Ljava/lang/Void;

    .line 261
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorAdapter;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/ClassOrInterfaceDeclaration;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 11
    .param p1, "decl"    # Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;
    .param p2, "elem"    # Lscenelib/annotations/el/AElement;

    .line 266
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 267
    .local v0, "params":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v1

    .line 268
    .local v1, "rcvrAnnos":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/ConstructorDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v2

    .line 269
    .local v2, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "<init>("

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 270
    .local v3, "sb":Ljava/lang/StringBuilder;
    move-object v4, p2

    check-cast v4, Lscenelib/annotations/el/AClass;

    .line 275
    .local v4, "clazz":Lscenelib/annotations/el/AClass;
    if-eqz v0, :cond_0

    .line 276
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 277
    .local v6, "param":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v7

    .line 278
    .local v7, "ptype":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-direct {p0, v7}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->getJVML(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v3, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 279
    .end local v6    # "param":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .end local v7    # "ptype":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    goto :goto_0

    .line 281
    :cond_0
    const-string v5, ")V"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 282
    iget-object v5, v4, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lscenelib/annotations/el/AMethod;

    .line 283
    .local v5, "method":Lscenelib/annotations/el/AMethod;
    invoke-direct {p0, p1, v5}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visitDecl(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;Lscenelib/annotations/el/ADeclaration;)Ljava/lang/Void;

    .line 284
    if-eqz v0, :cond_1

    .line 285
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_1
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v7

    if-ge v6, v7, :cond_1

    .line 286
    invoke-interface {v0, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 287
    .local v7, "param":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    iget-object v8, v5, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v8, v9}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lscenelib/annotations/el/AField;

    .line 288
    .local v8, "field":Lscenelib/annotations/el/AField;
    invoke-virtual {v7}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v9

    iget-object v10, v8, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v9, v10}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visitType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lscenelib/annotations/el/ATypeElement;)Ljava/lang/Void;

    .line 285
    .end local v7    # "param":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .end local v8    # "field":Lscenelib/annotations/el/AField;
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 291
    .end local v6    # "i":I
    :cond_1
    if-eqz v1, :cond_2

    .line 292
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 293
    .local v7, "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    invoke-static {v7}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->extractAnnotation(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Lscenelib/annotations/Annotation;

    move-result-object v8

    .line 294
    .local v8, "anno":Lscenelib/annotations/Annotation;
    iget-object v9, v5, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    iget-object v9, v9, Lscenelib/annotations/el/AField;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v9, v8}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 295
    .end local v7    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .end local v8    # "anno":Lscenelib/annotations/Annotation;
    goto :goto_2

    .line 297
    :cond_2
    if-nez v2, :cond_3

    const/4 v6, 0x0

    goto :goto_3

    :cond_3
    invoke-virtual {v2, p0, v5}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Void;

    :goto_3
    return-object v6
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 2
    .param p1, "decl"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;
    .param p2, "elem"    # Lscenelib/annotations/el/AElement;

    .line 303
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/AClass;

    iget-object v0, v0, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lscenelib/annotations/el/AField;

    .line 304
    .local v0, "field":Lscenelib/annotations/el/AField;
    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visitDecl(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;Lscenelib/annotations/el/ADeclaration;)Ljava/lang/Void;

    .line 305
    invoke-super {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorAdapter;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumConstantDeclaration;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Void;

    return-object v1
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 1
    .param p1, "decl"    # Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;
    .param p2, "elem"    # Lscenelib/annotations/el/AElement;

    .line 310
    move-object v0, p2

    check-cast v0, Lscenelib/annotations/el/ADeclaration;

    invoke-direct {p0, p1, v0}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visitDecl(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;Lscenelib/annotations/el/ADeclaration;)Ljava/lang/Void;

    .line 311
    invoke-super {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitorAdapter;->visit(Lorg/checkerframework/com/github/javaparser/ast/body/EnumDeclaration;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Void;

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 6
    .param p1, "decl"    # Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;
    .param p2, "elem"    # Lscenelib/annotations/el/AElement;

    .line 316
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 317
    .local v1, "v":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    move-object v2, p2

    check-cast v2, Lscenelib/annotations/el/AClass;

    .line 318
    .local v2, "clazz":Lscenelib/annotations/el/AClass;
    iget-object v3, v2, Lscenelib/annotations/el/AClass;->fields:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getNameAsString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lscenelib/annotations/el/AField;

    .line 319
    .local v3, "field":Lscenelib/annotations/el/AField;
    invoke-direct {p0, p1, v3}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visitDecl(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;Lscenelib/annotations/el/ADeclaration;)Ljava/lang/Void;

    .line 320
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/FieldDeclaration;->getCommonType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v4

    iget-object v5, v3, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v4, v5}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visitType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lscenelib/annotations/el/ATypeElement;)Ljava/lang/Void;

    .line 321
    .end local v1    # "v":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .end local v2    # "clazz":Lscenelib/annotations/el/AClass;
    .end local v3    # "field":Lscenelib/annotations/el/AField;
    goto :goto_0

    .line 322
    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 4
    .param p1, "decl"    # Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;
    .param p2, "elem"    # Lscenelib/annotations/el/AElement;

    .line 327
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->getBody()Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    move-result-object v0

    .line 328
    .local v0, "block":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    move-object v1, p2

    check-cast v1, Lscenelib/annotations/el/AClass;

    .line 329
    .local v1, "clazz":Lscenelib/annotations/el/AClass;
    iget-object v2, v1, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/body/InitializerDeclaration;->isStatic()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string v3, "<clinit>"

    goto :goto_0

    :cond_0
    const-string v3, "<init>"

    :goto_0
    invoke-virtual {v2, v3}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lscenelib/annotations/el/AElement;

    invoke-virtual {v0, p0, v2}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 330
    const/4 v2, 0x0

    return-object v2
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 17
    .param p1, "decl"    # Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;
    .param p2, "elem"    # Lscenelib/annotations/el/AElement;

    .line 335
    move-object/from16 v0, p0

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v1

    .line 336
    .local v1, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 337
    .local v2, "params":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getTypeParameters()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v3

    .line 338
    .local v3, "typeParams":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getReceiverParameter()Ljava/util/Optional;

    move-result-object v4

    .line 339
    .local v4, "rcvrParam":Ljava/util/Optional;, "Ljava/util/Optional<Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;>;"
    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getBody()Ljava/util/Optional;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;

    .line 340
    .local v5, "body":Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-virtual/range {p1 .. p1}, Lorg/checkerframework/com/github/javaparser/ast/body/MethodDeclaration;->getNameAsString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/16 v8, 0x28

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v7

    .line 341
    .local v7, "sb":Ljava/lang/StringBuilder;
    move-object/from16 v8, p2

    check-cast v8, Lscenelib/annotations/el/AClass;

    .line 343
    .local v8, "clazz":Lscenelib/annotations/el/AClass;
    if-eqz v2, :cond_0

    .line 344
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :goto_0
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 345
    .local v10, "param":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    invoke-virtual {v10}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v11

    .line 346
    .local v11, "ptype":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-direct {v0, v11}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->getJVML(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 347
    .end local v10    # "param":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .end local v11    # "ptype":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    goto :goto_0

    .line 349
    :cond_0
    const/16 v9, 0x29

    invoke-virtual {v7, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-direct {v0, v1}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->getJVML(Lorg/checkerframework/com/github/javaparser/ast/type/Type;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 350
    iget-object v9, v8, Lscenelib/annotations/el/AClass;->methods:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v9, v10}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lscenelib/annotations/el/AMethod;

    .line 351
    .local v9, "method":Lscenelib/annotations/el/AMethod;
    move-object/from16 v10, p1

    invoke-direct {v0, v10, v9}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visitDecl(Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;Lscenelib/annotations/el/ADeclaration;)Ljava/lang/Void;

    .line 352
    iget-object v11, v9, Lscenelib/annotations/el/AMethod;->returnType:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {v0, v1, v11}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visitType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lscenelib/annotations/el/ATypeElement;)Ljava/lang/Void;

    .line 353
    if-eqz v2, :cond_1

    .line 354
    const/4 v11, 0x0

    .local v11, "i":I
    :goto_1
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_1

    .line 355
    invoke-interface {v2, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;

    .line 356
    .local v12, "param":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    iget-object v13, v9, Lscenelib/annotations/el/AMethod;->parameters:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-virtual {v13, v14}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lscenelib/annotations/el/AField;

    .line 357
    .local v13, "field":Lscenelib/annotations/el/AField;
    invoke-virtual {v12}, Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v14

    iget-object v15, v13, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {v0, v14, v15}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visitType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lscenelib/annotations/el/ATypeElement;)Ljava/lang/Void;

    .line 354
    .end local v12    # "param":Lorg/checkerframework/com/github/javaparser/ast/body/Parameter;
    .end local v13    # "field":Lscenelib/annotations/el/AField;
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 360
    .end local v11    # "i":I
    :cond_1
    invoke-virtual {v4}, Ljava/util/Optional;->isPresent()Z

    move-result v11

    if-eqz v11, :cond_2

    .line 361
    invoke-virtual {v4}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;

    invoke-virtual {v11}, Lorg/checkerframework/com/github/javaparser/ast/body/ReceiverParameter;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v11

    invoke-virtual {v11}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v11

    :goto_2
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 362
    .local v12, "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    invoke-static {v12}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->extractAnnotation(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Lscenelib/annotations/Annotation;

    move-result-object v13

    .line 363
    .local v13, "anno":Lscenelib/annotations/Annotation;
    iget-object v14, v9, Lscenelib/annotations/el/AMethod;->receiver:Lscenelib/annotations/el/AField;

    iget-object v14, v14, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    iget-object v14, v14, Lscenelib/annotations/el/ATypeElement;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v14, v13}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 364
    .end local v12    # "expr":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .end local v13    # "anno":Lscenelib/annotations/Annotation;
    goto :goto_2

    .line 366
    :cond_2
    if-eqz v3, :cond_6

    .line 367
    const/4 v11, 0x0

    .restart local v11    # "i":I
    :goto_3
    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v12

    if-ge v11, v12, :cond_5

    .line 368
    invoke-interface {v3, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;

    .line 369
    .local v12, "typeParam":Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
    invoke-virtual {v12}, Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;->getTypeBound()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v13

    .line 370
    .local v13, "bounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    if-eqz v13, :cond_4

    .line 371
    const/4 v14, 0x0

    .local v14, "j":I
    :goto_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v15

    if-ge v14, v15, :cond_3

    .line 372
    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    .line 373
    .local v15, "bound":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    new-instance v6, Lscenelib/annotations/el/BoundLocation;

    invoke-direct {v6, v11, v14}, Lscenelib/annotations/el/BoundLocation;-><init>(II)V

    .line 374
    .local v6, "loc":Lscenelib/annotations/el/BoundLocation;
    move-object/from16 v16, v1

    .end local v1    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .local v16, "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    iget-object v1, v9, Lscenelib/annotations/el/AMethod;->bounds:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v1, v6}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AElement;

    invoke-virtual {v15, v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 371
    .end local v6    # "loc":Lscenelib/annotations/el/BoundLocation;
    .end local v15    # "bound":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v16

    const/4 v6, 0x0

    goto :goto_4

    .end local v16    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .restart local v1    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    :cond_3
    move-object/from16 v16, v1

    .end local v1    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .restart local v16    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    goto :goto_5

    .line 370
    .end local v14    # "j":I
    .end local v16    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .restart local v1    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    :cond_4
    move-object/from16 v16, v1

    .line 367
    .end local v1    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .end local v12    # "typeParam":Lorg/checkerframework/com/github/javaparser/ast/type/TypeParameter;
    .end local v13    # "bounds":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;>;"
    .restart local v16    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    :goto_5
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v1, v16

    const/4 v6, 0x0

    goto :goto_3

    .end local v16    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .restart local v1    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    :cond_5
    move-object/from16 v16, v1

    .end local v1    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .restart local v16    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    goto :goto_6

    .line 366
    .end local v11    # "i":I
    .end local v16    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .restart local v1    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    :cond_6
    move-object/from16 v16, v1

    .line 379
    .end local v1    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    .restart local v16    # "type":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    :goto_6
    if-nez v5, :cond_7

    const/4 v6, 0x0

    goto :goto_7

    :cond_7
    invoke-virtual {v5, v0, v9}, Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Ljava/lang/Void;

    :goto_7
    return-object v6
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 9
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;
    .param p2, "elem"    # Lscenelib/annotations/el/AElement;

    .line 384
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getType()Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;

    move-result-object v0

    .line 385
    .local v0, "type":Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;
    iget-object v1, p0, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->scene:Lscenelib/annotations/el/AScene;

    iget-object v1, v1, Lscenelib/annotations/el/AScene;->classes:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->getNameAsString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lscenelib/annotations/el/AClass;

    .line 386
    .local v1, "clazz":Lscenelib/annotations/el/AClass;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getScope()Ljava/util/Optional;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 387
    .local v2, "scope":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getTypeArguments()Ljava/util/Optional;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/List;

    .line 388
    .local v4, "typeArgs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/type/Type;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getArguments()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v5

    .line 389
    .local v5, "args":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;>;"
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/ObjectCreationExpr;->getAnonymousClassBody()Ljava/util/Optional;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/util/Optional;->orElse(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    .line 390
    .local v6, "bodyDecls":Lorg/checkerframework/com/github/javaparser/ast/NodeList;, "Lorg/checkerframework/com/github/javaparser/ast/NodeList<Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;>;"
    if-eqz v2, :cond_0

    .line 391
    invoke-virtual {v2, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 393
    :cond_0
    if-eqz v5, :cond_1

    .line 394
    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;

    .line 395
    .local v8, "arg":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    invoke-virtual {v8, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    .end local v8    # "arg":Lorg/checkerframework/com/github/javaparser/ast/expr/Expression;
    goto :goto_0

    .line 398
    :cond_1
    if-eqz v4, :cond_2

    .line 399
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    .line 400
    .local v8, "typeArg":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    invoke-virtual {v8, p0, p2}, Lorg/checkerframework/com/github/javaparser/ast/type/Type;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 401
    .end local v8    # "typeArg":Lorg/checkerframework/com/github/javaparser/ast/type/Type;
    goto :goto_1

    .line 403
    :cond_2
    invoke-virtual {v0, p0, v1}, Lorg/checkerframework/com/github/javaparser/ast/type/ClassOrInterfaceType;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 404
    if-eqz v6, :cond_3

    .line 405
    invoke-virtual {v6}, Lorg/checkerframework/com/github/javaparser/ast/NodeList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_3

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;

    .line 406
    .local v8, "decl":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    invoke-virtual {v8, p0, v1}, Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;->accept(Lorg/checkerframework/com/github/javaparser/ast/visitor/GenericVisitor;Ljava/lang/Object;)Ljava/lang/Object;

    .line 407
    .end local v8    # "decl":Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration;, "Lorg/checkerframework/com/github/javaparser/ast/body/BodyDeclaration<*>;"
    goto :goto_2

    .line 409
    :cond_3
    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 11
    .param p1, "expr"    # Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;
    .param p2, "elem"    # Lscenelib/annotations/el/AElement;

    .line 414
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getAnnotations()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v0

    .line 415
    .local v0, "annos":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;>;"
    move-object v1, p2

    check-cast v1, Lscenelib/annotations/el/AMethod;

    .line 416
    .local v1, "method":Lscenelib/annotations/el/AMethod;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getVariables()Lorg/checkerframework/com/github/javaparser/ast/NodeList;

    move-result-object v2

    .line 417
    .local v2, "varDecls":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;>;"
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_1

    .line 418
    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;

    .line 419
    .local v4, "decl":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    new-instance v5, Lscenelib/annotations/el/LocalLocation;

    invoke-virtual {v4}, Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;->getNameAsString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6, v3}, Lscenelib/annotations/el/LocalLocation;-><init>(Ljava/lang/String;I)V

    .line 420
    .local v5, "loc":Lscenelib/annotations/el/LocalLocation;
    iget-object v6, v1, Lscenelib/annotations/el/AMethod;->body:Lscenelib/annotations/el/ABlock;

    iget-object v6, v6, Lscenelib/annotations/el/ABlock;->locals:Lscenelib/annotations/util/coll/VivifyingMap;

    invoke-virtual {v6, v5}, Lscenelib/annotations/util/coll/VivifyingMap;->getVivify(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lscenelib/annotations/el/AField;

    .line 421
    .local v6, "field":Lscenelib/annotations/el/AField;
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/expr/VariableDeclarationExpr;->getCommonType()Lorg/checkerframework/com/github/javaparser/ast/type/Type;

    move-result-object v7

    iget-object v8, v6, Lscenelib/annotations/el/AField;->type:Lscenelib/annotations/el/ATypeElement;

    invoke-direct {p0, v7, v8}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->visitType(Lorg/checkerframework/com/github/javaparser/ast/type/Type;Lscenelib/annotations/el/ATypeElement;)Ljava/lang/Void;

    .line 422
    if-eqz v0, :cond_0

    .line 423
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;

    .line 424
    .local v8, "annoExpr":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    invoke-static {v8}, Lorg/checkerframework/framework/stub/ToIndexFileConverter;->extractAnnotation(Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;)Lscenelib/annotations/Annotation;

    move-result-object v9

    .line 425
    .local v9, "anno":Lscenelib/annotations/Annotation;
    iget-object v10, v6, Lscenelib/annotations/el/AField;->tlAnnotationsHere:Ljava/util/Set;

    invoke-interface {v10, v9}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 426
    .end local v8    # "annoExpr":Lorg/checkerframework/com/github/javaparser/ast/expr/AnnotationExpr;
    .end local v9    # "anno":Lscenelib/annotations/Annotation;
    goto :goto_1

    .line 417
    .end local v4    # "decl":Lorg/checkerframework/com/github/javaparser/ast/body/VariableDeclarator;
    .end local v5    # "loc":Lscenelib/annotations/el/LocalLocation;
    .end local v6    # "field":Lscenelib/annotations/el/AField;
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 429
    .end local v3    # "i":I
    :cond_1
    const/4 v3, 0x0

    return-object v3
.end method

.method public visit(Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;Lscenelib/annotations/el/AElement;)Ljava/lang/Void;
    .locals 1
    .param p1, "stmt"    # Lorg/checkerframework/com/github/javaparser/ast/stmt/BlockStmt;
    .param p2, "elem"    # Lscenelib/annotations/el/AElement;

    .line 254
    const/4 v0, 0x0

    return-object v0
.end method
