.class public Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolved;
.super Ljava/lang/Object;
.source "ClassFileVersion.java"

# interfaces
.implements Lnet/bytebuddy/ClassFileVersion$VersionLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/ClassFileVersion$VersionLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Resolved"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final classFileVersion:Lnet/bytebuddy/ClassFileVersion;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/ClassFileVersion;)V
    .locals 0
    .param p1, "classFileVersion"    # Lnet/bytebuddy/ClassFileVersion;

    .line 527
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 528
    iput-object p1, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolved;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 529
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-nez p1, :cond_1

    return v1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_2

    return v1

    :cond_2
    iget-object v2, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolved;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    check-cast p1, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolved;

    iget-object p1, p1, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolved;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v2, p1}, Lnet/bytebuddy/ClassFileVersion;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_3

    return v1

    :cond_3
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolved;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolved;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-virtual {v1}, Lnet/bytebuddy/ClassFileVersion;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public resolve()Lnet/bytebuddy/ClassFileVersion;
    .locals 1

    .line 535
    iget-object v0, p0, Lnet/bytebuddy/ClassFileVersion$VersionLocator$Resolved;->classFileVersion:Lnet/bytebuddy/ClassFileVersion;

    return-object v0
.end method