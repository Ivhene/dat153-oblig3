.class public abstract Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;
.super Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;
.source "TypeDescription.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "WithDelegation"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 8101
    invoke-direct {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;-><init>()V

    return-void
.end method


# virtual methods
.method protected abstract delegate()Lnet/bytebuddy/description/type/TypeDescription;
.end method

.method public getActualModifiers(Z)I
    .locals 1
    .param p1, "superFlag"    # Z

    .line 8217
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0, p1}, Lnet/bytebuddy/description/type/TypeDescription;->getActualModifiers(Z)I

    move-result v0

    return v0
.end method

.method public getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;
    .locals 1

    .line 8262
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getClassFileVersion()Lnet/bytebuddy/ClassFileVersion;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getComponentType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 8101
    invoke-super {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType;->getComponentType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;
    .locals 1

    .line 8191
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredAnnotations()Lnet/bytebuddy/description/annotation/AnnotationList;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/field/FieldList<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 8128
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredFields()Lnet/bytebuddy/description/field/FieldList;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/method/MethodList<",
            "Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 8135
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredMethods()Lnet/bytebuddy/description/method/MethodList;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 1

    .line 8163
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaredTypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic getDeclaringType()Lnet/bytebuddy/description/type/TypeDefinition;
    .locals 1

    .line 8101
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 8142
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getDeclaringType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 1

    .line 8149
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v0

    return-object v0
.end method

.method public getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 8156
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getEnclosingType()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getGenericSignature()Ljava/lang/String;
    .locals 1

    .line 8211
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getGenericSignature()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    .line 8121
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getInterfaces()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getModifiers()I
    .locals 1

    .line 8205
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getModifiers()I

    move-result v0

    return v0
.end method

.method public getNestHost()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 8224
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getNestHost()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    return-object v0
.end method

.method public getNestMembers()Lnet/bytebuddy/description/type/TypeList;
    .locals 1

    .line 8231
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getNestMembers()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    return-object v0
.end method

.method public getPackage()Lnet/bytebuddy/description/type/PackageDescription;
    .locals 1

    .line 8184
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getPackage()Lnet/bytebuddy/description/type/PackageDescription;

    move-result-object v0

    return-object v0
.end method

.method public getPermittedSubtypes()Lnet/bytebuddy/description/type/TypeList;
    .locals 1

    .line 8257
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getPermittedSubtypes()Lnet/bytebuddy/description/type/TypeList;

    move-result-object v0

    return-object v0
.end method

.method public getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lnet/bytebuddy/description/type/RecordComponentList<",
            "Lnet/bytebuddy/description/type/RecordComponentDescription$InDefinedShape;",
            ">;"
        }
    .end annotation

    .line 8238
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getRecordComponents()Lnet/bytebuddy/description/type/RecordComponentList;

    move-result-object v0

    return-object v0
.end method

.method public getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;
    .locals 1

    .line 8114
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getSuperClass()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v0

    return-object v0
.end method

.method public getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;
    .locals 1

    .line 8198
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->getTypeVariables()Lnet/bytebuddy/description/type/TypeList$Generic;

    move-result-object v0

    return-object v0
.end method

.method public isAnonymousType()Z
    .locals 1

    .line 8170
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isAnonymousType()Z

    move-result v0

    return v0
.end method

.method public isLocalType()Z
    .locals 1

    .line 8177
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isLocalType()Z

    move-result v0

    return v0
.end method

.method public isRecord()Z
    .locals 1

    .line 8245
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isRecord()Z

    move-result v0

    return v0
.end method

.method public isSealed()Z
    .locals 1

    .line 8250
    invoke-virtual {p0}, Lnet/bytebuddy/description/type/TypeDescription$AbstractBase$OfSimpleType$WithDelegation;->delegate()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v0

    invoke-interface {v0}, Lnet/bytebuddy/description/type/TypeDescription;->isSealed()Z

    move-result v0

    return v0
.end method
