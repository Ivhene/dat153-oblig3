.class public Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
.super Ljava/lang/Object;
.source "SourceRoot.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;,
        Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;
    }
.end annotation


# static fields
.field private static final JAVA_IDENTIFIER:Ljava/util/regex/Pattern;


# instance fields
.field private final cache:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/nio/file/Path;",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;>;"
        }
    .end annotation
.end field

.field private parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

.field private printer:Ljava/util/function/Function;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/function/Function<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final root:Ljava/nio/file/Path;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 62
    const-string v0, "\\p{javaJavaIdentifierStart}\\p{javaJavaIdentifierPart}*"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->JAVA_IDENTIFIER:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>(Ljava/nio/file/Path;)V
    .locals 3
    .param p1, "root"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 59
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    .line 60
    new-instance v0, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    .line 61
    new-instance v0, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;

    invoke-direct {v0}, Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda6;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda6;-><init>(Lorg/checkerframework/com/github/javaparser/printer/PrettyPrinter;)V

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->printer:Ljava/util/function/Function;

    .line 69
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 70
    const/4 v0, 0x0

    new-array v1, v0, [Ljava/nio/file/LinkOption;

    invoke-static {p1, v1}, Ljava/nio/file/Files;->isDirectory(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 73
    invoke-interface {p1}, Ljava/nio/file/Path;->normalize()Ljava/nio/file/Path;

    move-result-object v1

    iput-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    .line 74
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/function/Supplier;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda7;

    invoke-direct {v2, p0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda7;-><init>(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;)V

    aput-object v2, v1, v0

    const-string v0, "New source root at \"%s\""

    invoke-static {v0, v1}, Lorg/checkerframework/com/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 75
    return-void

    .line 71
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Only directories are allowed as root path: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public constructor <init>(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V
    .locals 0
    .param p1, "root"    # Ljava/nio/file/Path;
    .param p2, "parserConfiguration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "root",
            "parserConfiguration"
        }
    .end annotation

    .line 82
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;-><init>(Ljava/nio/file/Path;)V

    .line 83
    invoke-virtual {p0, p2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->setParserConfiguration(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    .line 84
    return-void
.end method

.method static synthetic access$000(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;)Ljava/nio/file/Path;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    .line 43
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    return-object v0
.end method

.method static synthetic access$100(Ljava/nio/file/Path;)Z
    .locals 1
    .param p0, "x0"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-static {p0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->isSensibleDirectoryToEnter(Ljava/nio/file/Path;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Ljava/nio/file/FileVisitResult;
    .locals 1
    .param p0, "x0"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .param p1, "x1"    # Ljava/nio/file/Path;
    .param p2, "x2"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .param p3, "x3"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 43
    invoke-direct {p0, p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->callback(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Ljava/nio/file/FileVisitResult;

    move-result-object v0

    return-object v0
.end method

.method private callback(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Ljava/nio/file/FileVisitResult;
    .locals 4
    .param p1, "absolutePath"    # Ljava/nio/file/Path;
    .param p2, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .param p3, "callback"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "absolutePath",
            "configuration",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 247
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-interface {v0, p1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 248
    .local v0, "localPath":Ljava/nio/file/Path;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/function/Supplier;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda14;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda14;-><init>(Ljava/nio/file/Path;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Parsing %s"

    invoke-static {v2, v1}, Lorg/checkerframework/com/github/javaparser/utils/Log;->trace(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 249
    new-instance v1, Lorg/checkerframework/com/github/javaparser/JavaParser;

    invoke-direct {v1, p2}, Lorg/checkerframework/com/github/javaparser/JavaParser;-><init>(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    sget-object v2, Lorg/checkerframework/com/github/javaparser/ParseStart;->COMPILATION_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    invoke-virtual {p2}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v3

    invoke-static {p1, v3}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v1

    .line 250
    .local v1, "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;"
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda15;

    invoke-direct {v3, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda15;-><init>(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 251
    sget-object v2, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$3;->$SwitchMap$com$github$javaparser$utils$SourceRoot$Callback$Result:[I

    invoke-interface {p3, v0, p1, v1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;->process(Ljava/nio/file/Path;Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback$Result;

    move-result-object v3

    invoke-virtual {v3}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback$Result;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 259
    new-instance v2, Ljava/lang/AssertionError;

    const-string v3, "Return an enum defined in SourceRoot.Callback.Result"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v2

    .line 257
    :pswitch_0
    sget-object v2, Ljava/nio/file/FileVisitResult;->TERMINATE:Ljava/nio/file/FileVisitResult;

    return-object v2

    .line 253
    :pswitch_1
    invoke-virtual {v1}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v2

    new-instance v3, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda16;

    invoke-direct {v3, p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda16;-><init>(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;Ljava/nio/file/Path;)V

    invoke-virtual {v2, v3}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 255
    :pswitch_2
    sget-object v2, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v2

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_0
    .end packed-switch
.end method

.method private static isSensibleDirectoryToEnter(Ljava/nio/file/Path;)Z
    .locals 5
    .param p0, "dir"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dir"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 154
    invoke-interface {p0}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 156
    .local v0, "dirToEnter":Ljava/lang/String;
    sget-object v1, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->JAVA_IDENTIFIER:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v1

    .line 158
    .local v1, "directoryIsAValidJavaIdentifier":Z
    invoke-static {p0}, Ljava/nio/file/Files;->isHidden(Ljava/nio/file/Path;)Z

    move-result v2

    const/4 v3, 0x1

    if-nez v2, :cond_1

    if-nez v1, :cond_0

    goto :goto_0

    .line 162
    :cond_0
    return v3

    .line 159
    :cond_1
    :goto_0
    new-array v2, v3, [Ljava/util/function/Supplier;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda0;

    invoke-direct {v3, v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda0;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Not processing directory \"%s\""

    invoke-static {v3, v2}, Lorg/checkerframework/com/github/javaparser/utils/Log;->trace(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 160
    return v4
.end method

.method static synthetic lambda$add$11(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p0, "startPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "startPackage"
        }
    .end annotation

    .line 398
    return-object p0
.end method

.method static synthetic lambda$add$12(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p0, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "filename"
        }
    .end annotation

    .line 398
    return-object p0
.end method

.method static synthetic lambda$add$13(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "path"
        }
    .end annotation

    .line 416
    return-object p0
.end method

.method static synthetic lambda$callback$6(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .param p0, "localPath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "localPath"
        }
    .end annotation

    .line 248
    return-object p0
.end method

.method static synthetic lambda$callback$7(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V
    .locals 1
    .param p0, "absolutePath"    # Ljava/nio/file/Path;
    .param p1, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .param p2, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "absolutePath",
            "configuration",
            "cu"
        }
    .end annotation

    .line 250
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-void
.end method

.method static synthetic lambda$getCompilationUnits$16(Lorg/checkerframework/com/github/javaparser/ParseResult;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 1
    .param p0, "p"    # Lorg/checkerframework/com/github/javaparser/ParseResult;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000
        }
        names = {
            "p"
        }
    .end annotation

    .line 506
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-object v0
.end method

.method static synthetic lambda$isSensibleDirectoryToEnter$4(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p0, "dirToEnter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "dirToEnter"
        }
    .end annotation

    .line 159
    return-object p0
.end method

.method static synthetic lambda$logPackage$9(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .param p0, "startPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "startPackage"
        }
    .end annotation

    .line 329
    return-object p0
.end method

.method static synthetic lambda$saveAll$14(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .param p0, "root"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "root"
        }
    .end annotation

    .line 458
    return-object p0
.end method

.method static synthetic lambda$saveAll$15(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "path"
        }
    .end annotation

    .line 462
    return-object p0
.end method

.method static synthetic lambda$tryToParse$1(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .param p0, "relativePath"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "relativePath"
        }
    .end annotation

    .line 99
    return-object p0
.end method

.method static synthetic lambda$tryToParse$2(Ljava/nio/file/Path;)Ljava/lang/Object;
    .locals 0
    .param p0, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010
        }
        names = {
            "path"
        }
    .end annotation

    .line 103
    return-object p0
.end method

.method static synthetic lambda$tryToParse$3(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V
    .locals 1
    .param p0, "path"    # Ljava/nio/file/Path;
    .param p1, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .param p2, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000
        }
        names = {
            "path",
            "configuration",
            "cu"
        }
    .end annotation

    .line 106
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p2, p0, v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-void
.end method

.method private logPackage(Ljava/lang/String;)V
    .locals 3
    .param p1, "startPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startPackage"
        }
    .end annotation

    .line 326
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 327
    return-void

    .line 329
    :cond_0
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/util/function/Supplier;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda19;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda19;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, "Parsing package \"%s\""

    invoke-static {v1, v0}, Lorg/checkerframework/com/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 330
    return-void
.end method

.method private save(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 1
    .param p1, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .param p2, "path"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "cu",
            "path"
        }
    .end annotation

    .line 434
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->save(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    move-result-object v0

    return-object v0
.end method

.method private save(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 2
    .param p1, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .param p2, "path"    # Ljava/nio/file/Path;
    .param p3, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "cu",
            "path",
            "encoding"
        }
    .end annotation

    .line 444
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 445
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 446
    invoke-virtual {p1, p2, p3}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->setStorage(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    .line 447
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getStorage()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->printer:Ljava/util/function/Function;

    invoke-virtual {v0, v1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->save(Ljava/util/function/Function;)V

    .line 448
    return-object p0
.end method


# virtual methods
.method public add(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 4
    .param p1, "startPackage"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "compilationUnit"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "filename",
            "compilationUnit"
        }
    .end annotation

    .line 395
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 396
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 397
    invoke-static {p3}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 398
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/function/Supplier;

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda17;

    invoke-direct {v1, p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda17;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda18;

    invoke-direct {v1, p2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda18;-><init>(Ljava/lang/String;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const-string v1, "Adding new file %s.%s"

    invoke-static {v1, v0}, Lorg/checkerframework/com/github/javaparser/utils/Log;->trace(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 399
    invoke-static {p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->fileInPackageRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 400
    .local v0, "path":Ljava/nio/file/Path;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ParseResult;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p3, v2, v3}, Lorg/checkerframework/com/github/javaparser/ParseResult;-><init>(Ljava/lang/Object;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;)V

    .line 404
    .local v1, "parseResult":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;"
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 405
    return-object p0
.end method

.method public add(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 4
    .param p1, "compilationUnit"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "compilationUnit"
        }
    .end annotation

    .line 413
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 414
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getStorage()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->isPresent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 415
    invoke-virtual {p1}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;->getStorage()Ljava/util/Optional;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit$Storage;->getPath()Ljava/nio/file/Path;

    move-result-object v0

    .line 416
    .local v0, "path":Ljava/nio/file/Path;
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/util/function/Supplier;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda9;

    invoke-direct {v2, v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda9;-><init>(Ljava/nio/file/Path;)V

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string v2, "Adding new file %s"

    invoke-static {v2, v1}, Lorg/checkerframework/com/github/javaparser/utils/Log;->trace(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 417
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ParseResult;

    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v3, 0x0

    invoke-direct {v1, p1, v2, v3}, Lorg/checkerframework/com/github/javaparser/ParseResult;-><init>(Ljava/lang/Object;Ljava/util/List;Lorg/checkerframework/com/github/javaparser/ast/comments/CommentsCollection;)V

    .line 421
    .local v1, "parseResult":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;"
    iget-object v2, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 422
    .end local v0    # "path":Ljava/nio/file/Path;
    .end local v1    # "parseResult":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;"
    nop

    .line 425
    return-object p0

    .line 423
    :cond_0
    new-instance v0, Ljava/lang/AssertionError;

    const-string v1, "Files added with this method should have their path set."

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0
.end method

.method public getCache()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;>;"
        }
    .end annotation

    .line 496
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public getCompilationUnits()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .line 504
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->stream()Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda4;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda4;-><init>()V

    .line 505
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->filter(Ljava/util/function/Predicate;)Ljava/util/stream/Stream;

    move-result-object v0

    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda5;

    invoke-direct {v1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda5;-><init>()V

    .line 506
    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->map(Ljava/util/function/Function;)Ljava/util/stream/Stream;

    move-result-object v0

    .line 507
    invoke-static {}, Ljava/util/stream/Collectors;->toList()Ljava/util/stream/Collector;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/stream/Stream;->collect(Ljava/util/stream/Collector;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 504
    return-object v0
.end method

.method public getParserConfiguration()Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .locals 1

    .line 518
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    return-object v0
.end method

.method public getPrinter()Ljava/util/function/Function;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/function/Function<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 543
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->printer:Ljava/util/function/Function;

    return-object v0
.end method

.method public getRoot()Ljava/nio/file/Path;
    .locals 1

    .line 514
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    return-object v0
.end method

.method synthetic lambda$callback$8$org-checkerframework-com-github-javaparser-utils-SourceRoot(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;)V
    .locals 0
    .param p1, "absolutePath"    # Ljava/nio/file/Path;
    .param p2, "cu"    # Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1000
        }
        names = {
            "absolutePath",
            "cu"
        }
    .end annotation

    .line 253
    invoke-direct {p0, p2, p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->save(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    return-void
.end method

.method synthetic lambda$new$0$org-checkerframework-com-github-javaparser-utils-SourceRoot()Ljava/lang/Object;
    .locals 1

    .line 74
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    return-object v0
.end method

.method synthetic lambda$parseParallelized$10$org-checkerframework-com-github-javaparser-utils-SourceRoot(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 2
    .param p1, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .param p2, "callback"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;
    .param p3, "absolutePath"    # Ljava/nio/file/Path;
    .param p4, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1010,
            0x1010,
            0x1000,
            0x1000
        }
        names = {
            "configuration",
            "callback",
            "absolutePath",
            "attrs"
        }
    .end annotation

    .line 350
    invoke-interface {p4}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 352
    :try_start_0
    invoke-direct {p0, p3, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->callback(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Ljava/nio/file/FileVisitResult;

    move-result-object v0
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 353
    :catch_0
    move-exception v0

    .line 354
    .local v0, "e":Ljava/io/IOException;
    invoke-static {v0}, Lorg/checkerframework/com/github/javaparser/utils/Log;->error(Ljava/lang/Throwable;)V

    .line 357
    .end local v0    # "e":Ljava/io/IOException;
    :cond_0
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method

.method synthetic lambda$tryToParseParallelized$5$org-checkerframework-com-github-javaparser-utils-SourceRoot(Ljava/nio/file/Path;Ljava/nio/file/attribute/BasicFileAttributes;)Ljava/nio/file/FileVisitResult;
    .locals 4
    .param p1, "file"    # Ljava/nio/file/Path;
    .param p2, "attrs"    # Ljava/nio/file/attribute/BasicFileAttributes;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x1000,
            0x1000
        }
        names = {
            "file",
            "attrs"
        }
    .end annotation

    .line 192
    invoke-interface {p2}, Ljava/nio/file/attribute/BasicFileAttributes;->isDirectory()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".java"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 193
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-interface {p1}, Ljava/nio/file/Path;->getParent()Ljava/nio/file/Path;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/nio/file/Path;->relativize(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v0

    .line 195
    .local v0, "relative":Ljava/nio/file/Path;
    nop

    .line 196
    :try_start_0
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 197
    invoke-interface {p1}, Ljava/nio/file/Path;->getFileName()Ljava/nio/file/Path;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    .line 195
    invoke-virtual {p0, v1, v2, v3}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->tryToParse(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 201
    goto :goto_0

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "e":Ljava/io/IOException;
    invoke-static {v1}, Lorg/checkerframework/com/github/javaparser/utils/Log;->error(Ljava/lang/Throwable;)V

    .line 203
    .end local v0    # "relative":Ljava/nio/file/Path;
    .end local v1    # "e":Ljava/io/IOException;
    :cond_0
    :goto_0
    sget-object v0, Ljava/nio/file/FileVisitResult;->CONTINUE:Ljava/nio/file/FileVisitResult;

    return-object v0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;
    .locals 3
    .param p1, "startPackage"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "filename"
        }
    .end annotation

    .line 233
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 234
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 236
    :try_start_0
    invoke-virtual {p0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->tryToParse(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    .line 237
    .local v0, "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;"
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->isSuccessful()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 238
    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    return-object v1

    .line 240
    :cond_0
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ParseProblemException;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getProblems()Ljava/util/List;

    move-result-object v2

    invoke-direct {v1, v2}, Lorg/checkerframework/com/github/javaparser/ParseProblemException;-><init>(Ljava/util/List;)V

    .end local p1    # "startPackage":Ljava/lang/String;
    .end local p2    # "filename":Ljava/lang/String;
    throw v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 241
    .end local v0    # "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;"
    .restart local p1    # "startPackage":Ljava/lang/String;
    .restart local p2    # "filename":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 242
    .local v0, "e":Ljava/io/IOException;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/ParseProblemException;

    invoke-direct {v1, v0}, Lorg/checkerframework/com/github/javaparser/ParseProblemException;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 1
    .param p1, "startPackage"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .param p4, "callback"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "filename",
            "configuration",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 272
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 273
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 274
    invoke-static {p3}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 275
    invoke-static {p4}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 276
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-static {v0, p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->fileInPackageAbsolutePath(Ljava/nio/file/Path;Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    invoke-direct {p0, v0, p3, p4}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->callback(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Ljava/nio/file/FileVisitResult;

    .line 277
    return-object p0
.end method

.method public parse(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 1
    .param p1, "startPackage"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "callback"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "filename",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 285
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {p0, p1, p2, v0, p3}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->parse(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    .line 286
    return-object p0
.end method

.method public parse(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 2
    .param p1, "startPackage"    # Ljava/lang/String;
    .param p2, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .param p3, "callback"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "configuration",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 296
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 297
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 298
    invoke-static {p3}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 299
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->logPackage(Ljava/lang/String;)V

    .line 300
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->packageAbsolutePath(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 301
    .local v0, "path":Ljava/nio/file/Path;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 302
    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$2;

    invoke-direct {v1, p0, p2, p3}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$2;-><init>(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)V

    invoke-static {v0, v1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 317
    :cond_0
    return-object p0
.end method

.method public parse(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 1
    .param p1, "startPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 321
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {p0, p1, v0, p2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->parse(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    .line 322
    return-object p0
.end method

.method public parseParallelized(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 3
    .param p1, "startPackage"    # Ljava/lang/String;
    .param p2, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .param p3, "callback"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "configuration",
            "callback"
        }
    .end annotation

    .line 343
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 344
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 345
    invoke-static {p3}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 346
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->logPackage(Ljava/lang/String;)V

    .line 347
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->packageAbsolutePath(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 348
    .local v0, "path":Ljava/nio/file/Path;
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/nio/file/LinkOption;

    invoke-static {v0, v1}, Ljava/nio/file/Files;->exists(Ljava/nio/file/Path;[Ljava/nio/file/LinkOption;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 349
    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda8;

    invoke-direct {v2, p0, p2, p3}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda8;-><init>(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)V

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;-><init>(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;)V

    .line 359
    .local v1, "parse":Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;
    new-instance v2, Ljava/util/concurrent/ForkJoinPool;

    invoke-direct {v2}, Ljava/util/concurrent/ForkJoinPool;-><init>()V

    .line 360
    .local v2, "pool":Ljava/util/concurrent/ForkJoinPool;
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ForkJoinPool;->invoke(Ljava/util/concurrent/ForkJoinTask;)Ljava/lang/Object;

    .line 362
    .end local v1    # "parse":Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;
    .end local v2    # "pool":Ljava/util/concurrent/ForkJoinPool;
    :cond_0
    return-object p0
.end method

.method public parseParallelized(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 1
    .param p1, "startPackage"    # Ljava/lang/String;
    .param p2, "callback"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 375
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {p0, p1, v0, p2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->parseParallelized(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    move-result-object v0

    return-object v0
.end method

.method public parseParallelized(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 2
    .param p1, "callback"    # Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "callback"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 386
    const-string v0, ""

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {p0, v0, v1, p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->parseParallelized(Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$Callback;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    move-result-object v0

    return-object v0
.end method

.method public saveAll()Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 1

    .line 481
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->saveAll(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    move-result-object v0

    return-object v0
.end method

.method public saveAll(Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 1
    .param p1, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "encoding"
        }
    .end annotation

    .line 489
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-virtual {p0, v0, p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->saveAll(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    move-result-object v0

    return-object v0
.end method

.method public saveAll(Ljava/nio/file/Path;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 1
    .param p1, "root"    # Ljava/nio/file/Path;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "root"
        }
    .end annotation

    .line 474
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {v0}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->saveAll(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    move-result-object v0

    return-object v0
.end method

.method public saveAll(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 7
    .param p1, "root"    # Ljava/nio/file/Path;
    .param p2, "encoding"    # Ljava/nio/charset/Charset;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "root",
            "encoding"
        }
    .end annotation

    .line 457
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 458
    const/4 v0, 0x2

    new-array v0, v0, [Ljava/util/function/Supplier;

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda1;

    invoke-direct {v2, v1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda1;-><init>(Ljava/util/Map;)V

    const/4 v1, 0x0

    aput-object v2, v0, v1

    new-instance v2, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda2;

    invoke-direct {v2, p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda2;-><init>(Ljava/nio/file/Path;)V

    const/4 v3, 0x1

    aput-object v2, v0, v3

    const-string v2, "Saving all files (%s) to %s"

    invoke-static {v2, v0}, Lorg/checkerframework/com/github/javaparser/utils/Log;->info(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 459
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 460
    .local v2, "cu":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/nio/file/Path;

    invoke-interface {p1, v4}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v4

    .line 461
    .local v4, "path":Ljava/nio/file/Path;
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ParseResult;

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->isPresent()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 462
    new-array v5, v3, [Ljava/util/function/Supplier;

    new-instance v6, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda3;

    invoke-direct {v6, v4}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda3;-><init>(Ljava/nio/file/Path;)V

    aput-object v6, v5, v1

    const-string v6, "Saving %s"

    invoke-static {v6, v5}, Lorg/checkerframework/com/github/javaparser/utils/Log;->trace(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 463
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ParseResult;

    invoke-virtual {v5}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/Optional;->get()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;

    invoke-direct {p0, v5, v4, p2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->save(Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;

    .line 465
    .end local v2    # "cu":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;>;"
    .end local v4    # "path":Ljava/nio/file/Path;
    :cond_0
    goto :goto_0

    .line 466
    :cond_1
    return-object p0
.end method

.method public setParserConfiguration(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 0
    .param p1, "parserConfiguration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "parserConfiguration"
        }
    .end annotation

    .line 525
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    .line 527
    return-object p0
.end method

.method public setPrinter(Ljava/util/function/Function;)Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "printer"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/function/Function<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            "Ljava/lang/String;",
            ">;)",
            "Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;"
        }
    .end annotation

    .line 534
    .local p1, "printer":Ljava/util/function/Function;, "Ljava/util/function/Function<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;Ljava/lang/String;>;"
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 535
    iput-object p1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->printer:Ljava/util/function/Function;

    .line 536
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 604
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SourceRoot at "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public tryToParse()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 172
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->tryToParse(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public tryToParse(Ljava/lang/String;)Ljava/util/List;
    .locals 2
    .param p1, "startPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startPackage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 132
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 133
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->logPackage(Ljava/lang/String;)V

    .line 134
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->packageAbsolutePath(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 135
    .local v0, "path":Ljava/nio/file/Path;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$1;

    invoke-direct {v1, p0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$1;-><init>(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;)V

    invoke-static {v0, v1}, Ljava/nio/file/Files;->walkFileTree(Ljava/nio/file/Path;Ljava/nio/file/FileVisitor;)Ljava/nio/file/Path;

    .line 150
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->getCache()Ljava/util/List;

    move-result-object v1

    return-object v1
.end method

.method public tryToParse(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 1
    .param p1, "startPackage"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "filename"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 120
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->parserConfiguration:Lorg/checkerframework/com/github/javaparser/ParserConfiguration;

    invoke-virtual {p0, p1, p2, v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->tryToParse(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v0

    return-object v0
.end method

.method public tryToParse(Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)Lorg/checkerframework/com/github/javaparser/ParseResult;
    .locals 5
    .param p1, "startPackage"    # Ljava/lang/String;
    .param p2, "filename"    # Ljava/lang/String;
    .param p3, "configuration"    # Lorg/checkerframework/com/github/javaparser/ParserConfiguration;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "startPackage",
            "filename",
            "configuration"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lorg/checkerframework/com/github/javaparser/ParserConfiguration;",
            ")",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 95
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 96
    invoke-static {p2}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 97
    invoke-static {p1, p2}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->fileInPackageRelativePath(Ljava/lang/String;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 98
    .local v0, "relativePath":Ljava/nio/file/Path;
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_0

    .line 99
    new-array v1, v3, [Ljava/util/function/Supplier;

    new-instance v3, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda11;

    invoke-direct {v3, v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda11;-><init>(Ljava/nio/file/Path;)V

    aput-object v3, v1, v2

    const-string v2, "Retrieving cached %s"

    invoke-static {v2, v1}, Lorg/checkerframework/com/github/javaparser/utils/Log;->trace(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 100
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/com/github/javaparser/ParseResult;

    return-object v1

    .line 102
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-interface {v1, v0}, Ljava/nio/file/Path;->resolve(Ljava/nio/file/Path;)Ljava/nio/file/Path;

    move-result-object v1

    .line 103
    .local v1, "path":Ljava/nio/file/Path;
    new-array v3, v3, [Ljava/util/function/Supplier;

    new-instance v4, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda12;

    invoke-direct {v4, v1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda12;-><init>(Ljava/nio/file/Path;)V

    aput-object v4, v3, v2

    const-string v2, "Parsing %s"

    invoke-static {v2, v3}, Lorg/checkerframework/com/github/javaparser/utils/Log;->trace(Ljava/lang/String;[Ljava/util/function/Supplier;)V

    .line 104
    new-instance v2, Lorg/checkerframework/com/github/javaparser/JavaParser;

    invoke-direct {v2, p3}, Lorg/checkerframework/com/github/javaparser/JavaParser;-><init>(Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    sget-object v3, Lorg/checkerframework/com/github/javaparser/ParseStart;->COMPILATION_UNIT:Lorg/checkerframework/com/github/javaparser/ParseStart;

    .line 105
    invoke-virtual {p3}, Lorg/checkerframework/com/github/javaparser/ParserConfiguration;->getCharacterEncoding()Ljava/nio/charset/Charset;

    move-result-object v4

    invoke-static {v1, v4}, Lorg/checkerframework/com/github/javaparser/Providers;->provider(Ljava/nio/file/Path;Ljava/nio/charset/Charset;)Lorg/checkerframework/com/github/javaparser/Provider;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Lorg/checkerframework/com/github/javaparser/JavaParser;->parse(Lorg/checkerframework/com/github/javaparser/ParseStart;Lorg/checkerframework/com/github/javaparser/Provider;)Lorg/checkerframework/com/github/javaparser/ParseResult;

    move-result-object v2

    .line 106
    .local v2, "result":Lorg/checkerframework/com/github/javaparser/ParseResult;, "Lorg/checkerframework/com/github/javaparser/ParseResult<Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;>;"
    invoke-virtual {v2}, Lorg/checkerframework/com/github/javaparser/ParseResult;->getResult()Ljava/util/Optional;

    move-result-object v3

    new-instance v4, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda13;

    invoke-direct {v4, v1, p3}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda13;-><init>(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/ParserConfiguration;)V

    invoke-virtual {v3, v4}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    .line 107
    iget-object v3, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->cache:Ljava/util/Map;

    invoke-interface {v3, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 108
    return-object v2
.end method

.method public tryToParseParallelized()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;>;"
        }
    .end annotation

    .line 220
    const-string v0, ""

    invoke-virtual {p0, v0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->tryToParseParallelized(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public tryToParseParallelized(Ljava/lang/String;)Ljava/util/List;
    .locals 4
    .param p1, "startPackage"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "startPackage"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lorg/checkerframework/com/github/javaparser/ParseResult<",
            "Lorg/checkerframework/com/github/javaparser/ast/CompilationUnit;",
            ">;>;"
        }
    .end annotation

    .line 188
    invoke-static {p1}, Lorg/checkerframework/com/github/javaparser/utils/Utils;->assertNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 189
    invoke-direct {p0, p1}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->logPackage(Ljava/lang/String;)V

    .line 190
    iget-object v0, p0, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->root:Ljava/nio/file/Path;

    invoke-static {v0, p1}, Lorg/checkerframework/com/github/javaparser/utils/CodeGenerationUtils;->packageAbsolutePath(Ljava/nio/file/Path;Ljava/lang/String;)Ljava/nio/file/Path;

    move-result-object v0

    .line 191
    .local v0, "path":Ljava/nio/file/Path;
    new-instance v1, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;

    new-instance v2, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda10;

    invoke-direct {v2, p0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$$ExternalSyntheticLambda10;-><init>(Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;)V

    invoke-direct {v1, v0, v2}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;-><init>(Ljava/nio/file/Path;Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse$VisitFileCallback;)V

    .line 205
    .local v1, "parse":Lorg/checkerframework/com/github/javaparser/utils/SourceRoot$ParallelParse;
    new-instance v2, Ljava/util/concurrent/ForkJoinPool;

    invoke-direct {v2}, Ljava/util/concurrent/ForkJoinPool;-><init>()V

    .line 206
    .local v2, "pool":Ljava/util/concurrent/ForkJoinPool;
    invoke-virtual {v2, v1}, Ljava/util/concurrent/ForkJoinPool;->invoke(Ljava/util/concurrent/ForkJoinTask;)Ljava/lang/Object;

    .line 207
    invoke-virtual {p0}, Lorg/checkerframework/com/github/javaparser/utils/SourceRoot;->getCache()Ljava/util/List;

    move-result-object v3

    return-object v3
.end method
