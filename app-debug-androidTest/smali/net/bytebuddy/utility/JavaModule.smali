.class public Lnet/bytebuddy/utility/JavaModule;
.super Ljava/lang/Object;
.source "JavaModule.java"

# interfaces
.implements Lnet/bytebuddy/description/NamedElement$WithOptionalName;
.implements Lnet/bytebuddy/description/annotation/AnnotationSource;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/utility/JavaModule$Module;,
        Lnet/bytebuddy/utility/JavaModule$Resolver;
    }
.end annotation


# static fields
.field protected static final MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

.field protected static final RESOLVER:Lnet/bytebuddy/utility/JavaModule$Resolver;

.field public static final UNSUPPORTED:Lnet/bytebuddy/utility/JavaModule;


# instance fields
.field private final module:Ljava/lang/reflect/AnnotatedElement;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 38
    const/4 v0, 0x0

    sput-object v0, Lnet/bytebuddy/utility/JavaModule;->UNSUPPORTED:Lnet/bytebuddy/utility/JavaModule;

    .line 43
    const-class v0, Lnet/bytebuddy/utility/JavaModule$Resolver;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaModule$Resolver;

    sput-object v0, Lnet/bytebuddy/utility/JavaModule;->RESOLVER:Lnet/bytebuddy/utility/JavaModule$Resolver;

    .line 48
    const-class v0, Lnet/bytebuddy/utility/JavaModule$Module;

    invoke-static {v0}, Lnet/bytebuddy/utility/dispatcher/JavaDispatcher;->of(Ljava/lang/Class;)Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/utility/JavaModule$Module;

    sput-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    return-void
.end method

.method protected constructor <init>(Ljava/lang/reflect/AnnotatedElement;)V
    .locals 0
    .param p1, "module"    # Ljava/lang/reflect/AnnotatedElement;

    .line 60
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 61
    iput-object p1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    .line 62
    return-void
.end method

.method public static isSupported()Z
    .locals 2

    .line 97
    sget-object v0, Lnet/bytebuddy/ClassFileVersion;->JAVA_V5:Lnet/bytebuddy/ClassFileVersion;

    invoke-static {v0}, Lnet/bytebuddy/ClassFileVersion;->ofThisVm(Lnet/bytebuddy/ClassFileVersion;)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    sget-object v1, Lnet/bytebuddy/ClassFileVersion;->JAVA_V9:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v0, v1}, Lnet/bytebuddy/ClassFileVersion;->isAtLeast(Lnet/bytebuddy/ClassFileVersion;)Z

    move-result v0

    return v0
.end method

.method public static of(Ljava/lang/Object;)Lnet/bytebuddy/utility/JavaModule;
    .locals 3
    .param p0, "module"    # Ljava/lang/Object;

    .line 85
    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    invoke-interface {v0, p0}, Lnet/bytebuddy/utility/JavaModule$Module;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 88
    new-instance v0, Lnet/bytebuddy/utility/JavaModule;

    move-object v1, p0

    check-cast v1, Ljava/lang/reflect/AnnotatedElement;

    invoke-direct {v0, v1}, Lnet/bytebuddy/utility/JavaModule;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    return-object v0

    .line 86
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Not a Java module: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static ofType(Ljava/lang/Class;)Lnet/bytebuddy/utility/JavaModule;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Lnet/bytebuddy/utility/JavaModule;"
        }
    .end annotation

    .line 71
    .local p0, "type":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->RESOLVER:Lnet/bytebuddy/utility/JavaModule$Resolver;

    invoke-interface {v0, p0}, Lnet/bytebuddy/utility/JavaModule$Resolver;->getModule(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    .line 72
    .local v0, "module":Ljava/lang/Object;
    if-nez v0, :cond_0

    sget-object v1, Lnet/bytebuddy/utility/JavaModule;->UNSUPPORTED:Lnet/bytebuddy/utility/JavaModule;

    goto :goto_0

    :cond_0
    new-instance v1, Lnet/bytebuddy/utility/JavaModule;

    move-object v2, v0

    check-cast v2, Ljava/lang/reflect/AnnotatedElement;

    invoke-direct {v1, v2}, Lnet/bytebuddy/utility/JavaModule;-><init>(Ljava/lang/reflect/AnnotatedElement;)V

    :goto_0
    return-object v1
.end method


# virtual methods
.method public canRead(Lnet/bytebuddy/utility/JavaModule;)Z
    .locals 3
    .param p1, "module"    # Lnet/bytebuddy/utility/JavaModule;

    .line 150
    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {p1}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lnet/bytebuddy/utility/JavaModule$Module;->canRead(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 3
    .param p1, "other"    # Ljava/lang/Object;

    .line 189
    if-ne p0, p1, :cond_0

    .line 190
    const/4 v0, 0x1

    return v0

    .line 191
    :cond_0
    instance-of v0, p1, Lnet/bytebuddy/utility/JavaModule;

    if-nez v0, :cond_1

    .line 192
    const/4 v0, 0x0

    return v0

    .line 194
    :cond_1
    move-object v0, p1

    check-cast v0, Lnet/bytebuddy/utility/JavaModule;

    .line 195
    .local v0, "javaModule":Lnet/bytebuddy/utility/JavaModule;
    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    iget-object v2, v0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    return v1
.end method

.method public getActualName()Ljava/lang/String;
    .locals 2

    .line 111
    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0, v1}, Lnet/bytebuddy/utility/JavaModule$Module;->getName(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getClassLoader()Ljava/lang/ClassLoader;
    .locals 2

    .line 131
    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0, v1}, Lnet/bytebuddy/utility/JavaModule$Module;->getClassLoader(Ljava/lang/Object;)Ljava/lang/ClassLoader;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 2

    .line 179
    new-instance v0, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v1}, Ljava/lang/reflect/AnnotatedElement;->getDeclaredAnnotations()[Ljava/lang/annotation/Annotation;

    move-result-object v1

    invoke-direct {v0, v1}, Lnet/bytebuddy/description/annotation/AnnotationList$ForLoadedAnnotations;-><init>([Ljava/lang/annotation/Annotation;)V

    return-object v0
.end method

.method public getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
    .locals 2
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 122
    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0, v1, p1}, Lnet/bytebuddy/utility/JavaModule$Module;->getResourceAsStream(Ljava/lang/Object;Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v0

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 184
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public isExported(Lnet/bytebuddy/description/type/PackageDescription;Lnet/bytebuddy/utility/JavaModule;)Z
    .locals 4
    .param p1, "packageDescription"    # Lnet/bytebuddy/description/type/PackageDescription;
    .param p2, "module"    # Lnet/bytebuddy/utility/JavaModule;

    .line 161
    if-eqz p1, :cond_1

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/PackageDescription;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/utility/JavaModule$Module;->isExported(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isNamed()Z
    .locals 2

    .line 104
    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {v0, v1}, Lnet/bytebuddy/utility/JavaModule$Module;->isNamed(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isOpened(Lnet/bytebuddy/description/type/PackageDescription;Lnet/bytebuddy/utility/JavaModule;)Z
    .locals 4
    .param p1, "packageDescription"    # Lnet/bytebuddy/description/type/PackageDescription;
    .param p2, "module"    # Lnet/bytebuddy/utility/JavaModule;

    .line 172
    if-eqz p1, :cond_1

    sget-object v0, Lnet/bytebuddy/utility/JavaModule;->MODULE:Lnet/bytebuddy/utility/JavaModule$Module;

    iget-object v1, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-interface {p1}, Lnet/bytebuddy/description/type/PackageDescription;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2}, Lnet/bytebuddy/utility/JavaModule;->unwrap()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0, v1, v2, v3}, Lnet/bytebuddy/utility/JavaModule$Module;->isOpen(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 200
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public unwrap()Ljava/lang/Object;
    .locals 1

    .line 140
    iget-object v0, p0, Lnet/bytebuddy/utility/JavaModule;->module:Ljava/lang/reflect/AnnotatedElement;

    return-object v0
.end method
