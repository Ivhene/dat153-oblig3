.class public final enum Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;
.super Ljava/lang/Enum;
.source "PackageDefinitionStrategy.java"

# interfaces
.implements Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Undefined"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;",
        ">;",
        "Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

.field public static final enum INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 167
    new-instance v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    const-string v1, "INSTANCE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;->INSTANCE:Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    .line 162
    filled-new-array {v0}, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    move-result-object v0

    sput-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;->$VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 162
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 162
    const-class v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    return-object v0
.end method

.method public static values()[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;
    .locals 1

    .line 162
    sget-object v0, Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;->$VALUES:[Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    invoke-virtual {v0}, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lnet/bytebuddy/dynamic/loading/PackageDefinitionStrategy$Definition$Undefined;

    return-object v0
.end method


# virtual methods
.method public getImplementationTitle()Ljava/lang/String;
    .locals 2

    .line 201
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read property of undefined package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImplementationVendor()Ljava/lang/String;
    .locals 2

    .line 215
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read property of undefined package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getImplementationVersion()Ljava/lang/String;
    .locals 2

    .line 208
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read property of undefined package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSealBase()Ljava/net/URL;
    .locals 2

    .line 222
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read property of undefined package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSpecificationTitle()Ljava/lang/String;
    .locals 2

    .line 180
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read property of undefined package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSpecificationVendor()Ljava/lang/String;
    .locals 2

    .line 194
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read property of undefined package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getSpecificationVersion()Ljava/lang/String;
    .locals 2

    .line 187
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot read property of undefined package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isCompatibleTo(Ljava/lang/Package;)Z
    .locals 2
    .param p1, "definedPackage"    # Ljava/lang/Package;

    .line 229
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot check compatibility to undefined package"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public isDefined()Z
    .locals 1

    .line 173
    const/4 v0, 0x0

    return v0
.end method
