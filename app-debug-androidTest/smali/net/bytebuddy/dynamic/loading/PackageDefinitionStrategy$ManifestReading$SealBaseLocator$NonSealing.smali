.class public final enum Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;
.super Ljava/lang/Enum;
.source "PackageDefinitionStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "NonSealing"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;",
        ">;",
        "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 596
    new-instance v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;

    .line 591
    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;->$VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 591
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 591
    const-class v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;
    .locals 1

    .line 591
    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;->$VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading$SealBaseLocator$NonSealing;

    return-object v0
.end method


# virtual methods
.method public findSealBase(Ljava/lang/ClassLoader;Ljava/lang/String;)Ljava/net/URL;
    .locals 1
    .param p1, "classLoader"    # Ljava/lang/ClassLoader;
    .param p2, "typeName"    # Ljava/lang/String;

    .line 602
    invoke-static {}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$ManifestReading;->access$000()Ljava/net/URL;

    move-result-object v0

    return-object v0
.end method
