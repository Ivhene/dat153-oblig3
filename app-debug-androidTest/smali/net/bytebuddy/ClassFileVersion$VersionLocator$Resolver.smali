.class public final enum Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;
.super Ljava/lang/Enum;
.source "ClassFileVersion.java"

# interfaces
.implements Ljava/security/PrivilegedAction;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/ClassFileVersion$VersionLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Resolver"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;",
        ">;",
        "Ljava/security/PrivilegedAction<",
        "Lnet/bytebuddy/ClassFileVersion$VersionLocator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;

.field public static final enum INSTANCE:Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 477
    new-instance v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;->INSTANCE:Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;

    .line 472
    filled-new-array {v0}, [Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;->$VALUES:[Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 472
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 472
    const-class v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;
    .locals 1

    .line 472
    sget-object v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;->$VALUES:[Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;

    invoke-virtual {v0}, [Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;

    return-object v0
.end method


# virtual methods
.method public bridge synthetic run()Ljava/lang/Object;
    .locals 1

    .line 472
    invoke-virtual {p0}, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolver;->run()Lnet/bytebuddy/ClassFileVersion$VersionLocator;

    move-result-object v0

    return-object v0
.end method

.method public run()Lnet/bytebuddy/ClassFileVersion$VersionLocator;
    .locals 7

    .line 485
    const/4 v0, 0x0

    :try_start_0
    new-instance v1, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolved;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-class v3, Ljava/lang/Runtime;

    invoke-virtual {v3}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "$Version"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v2

    const-string v3, "major"

    new-array v4, v0, [Ljava/lang/Class;

    .line 486
    invoke-virtual {v2, v3, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    const-class v3, Ljava/lang/Runtime;

    const-string v4, "version"

    new-array v5, v0, [Ljava/lang/Class;

    .line 487
    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {v3, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    new-array v4, v0, [Ljava/lang/Object;

    invoke-virtual {v2, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    .line 485
    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {v2}, Lnet/bytebuddy/ClassFileVersion;->ofJavaVersion(I)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v2

    invoke-direct {v1, v2}, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolved;-><init>(Lnet/bytebuddy/ClassFileVersion;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object v1

    .line 488
    :catchall_0
    move-exception v1

    .line 490
    .local v1, "ignored":Ljava/lang/Throwable;
    :try_start_1
    const-string v2, "java.version"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 491
    .local v2, "versionString":Ljava/lang/String;
    if-eqz v2, :cond_3

    .line 493
    const-string v3, "0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 494
    new-instance v0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolved;

    sget-object v3, Lnet/bytebuddy/ClassFileVersion;->JAVA_V6:Lnet/bytebuddy/ClassFileVersion;

    invoke-direct {v0, v3}, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolved;-><init>(Lnet/bytebuddy/ClassFileVersion;)V

    return-object v0

    .line 496
    :cond_0
    const/4 v3, -0x1

    filled-new-array {v3, v0, v0}, [I

    move-result-object v0

    .line 497
    .local v0, "versionIndex":[I
    const/4 v4, 0x1

    .local v4, "index":I
    :goto_0
    const/4 v5, 0x3

    const/4 v6, 0x1

    if-ge v4, v5, :cond_2

    .line 498
    add-int/lit8 v5, v4, -0x1

    aget v5, v0, v5

    add-int/2addr v5, v6

    const/16 v6, 0x2e

    invoke-virtual {v2, v6, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v5

    aput v5, v0, v4

    .line 499
    aget v5, v0, v4

    if-eq v5, v3, :cond_1

    .line 497
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 500
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "This JVM\'s version string does not seem to be valid: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v3, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ignored":Ljava/lang/Throwable;
    throw v3

    .line 503
    .end local v4    # "index":I
    .restart local v1    # "ignored":Ljava/lang/Throwable;
    :cond_2
    new-instance v3, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolved;

    aget v4, v0, v6

    add-int/2addr v4, v6

    const/4 v5, 0x2

    aget v5, v0, v5

    invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    invoke-static {v4}, Lnet/bytebuddy/ClassFileVersion;->ofJavaVersion(I)Lnet/bytebuddy/ClassFileVersion;

    move-result-object v4

    invoke-direct {v3, v4}, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolved;-><init>(Lnet/bytebuddy/ClassFileVersion;)V

    return-object v3

    .line 492
    .end local v0    # "versionIndex":[I
    :cond_3
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v3, "Java version property is not set"

    invoke-direct {v0, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    .end local v1    # "ignored":Ljava/lang/Throwable;
    throw v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 504
    .end local v2    # "versionString":Ljava/lang/String;
    .restart local v1    # "ignored":Ljava/lang/Throwable;
    :catchall_1
    move-exception v0

    .line 505
    .local v0, "throwable":Ljava/lang/Throwable;
    new-instance v2, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Unresolved;

    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Unresolved;-><init>(Ljava/lang/String;)V

    return-object v2
.end method
