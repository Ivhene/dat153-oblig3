.class public interface abstract Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;
.super Ljava/lang/Object;
.source "AuxiliaryType.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$SignatureRelevant;,
        Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;
    }
.end annotation


# static fields
.field public static final DEFAULT_TYPE_MODIFIER:[Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 44
    const/4 v0, 0x1

    new-array v0, v0, [Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    const/4 v1, 0x0

    sget-object v2, Lnet/bytebuddy/description/modifier/SyntheticState;->SYNTHETIC:Lnet/bytebuddy/description/modifier/SyntheticState;

    aput-object v2, v0, v1

    sput-object v0, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;->DEFAULT_TYPE_MODIFIER:[Lnet/bytebuddy/description/modifier/ModifierContributor$ForType;

    return-void
.end method


# virtual methods
.method public abstract make(Ljava/lang/String;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/MethodAccessorFactory;)Lnet/bytebuddy/dynamic/DynamicType;
.end method
