.class public Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;
.super Ljava/lang/Object;
.source "FieldAccess.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "OfGenericField"
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field private final defined:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

.field private final targetType:Lnet/bytebuddy/description/type/TypeDefinition;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;)V
    .locals 0
    .param p1, "targetType"    # Lnet/bytebuddy/description/type/TypeDefinition;
    .param p2, "defined"    # Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    .line 160
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 161
    iput-object p1, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->targetType:Lnet/bytebuddy/description/type/TypeDefinition;

    .line 162
    iput-object p2, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->defined:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    .line 163
    return-void
.end method

.method protected static of(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;
    .locals 2
    .param p0, "fieldDescription"    # Lnet/bytebuddy/description/field/FieldDescription;
    .param p1, "fieldAccess"    # Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    .line 173
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;

    invoke-interface {p0}, Lnet/bytebuddy/description/field/FieldDescription;->getType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;-><init>(Lnet/bytebuddy/description/type/TypeDefinition;Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;)V

    return-object v0
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
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->targetType:Lnet/bytebuddy/description/type/TypeDefinition;

    check-cast p1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;

    iget-object v3, p1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->targetType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->defined:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    iget-object p1, p1, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->defined:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_4

    return v1

    :cond_4
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->targetType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->defined:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 4

    .line 180
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->defined:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    invoke-interface {v2}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->read()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v1, v3

    iget-object v2, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->targetType:Lnet/bytebuddy/description/type/TypeDefinition;

    invoke-static {v2}, Lnet/bytebuddy/implementation/bytecode/assign/TypeCasting;->to(Lnet/bytebuddy/description/type/TypeDefinition;)Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/StackManipulation$Compound;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method

.method public write()Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .locals 1

    .line 187
    iget-object v0, p0, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$OfGenericField;->defined:Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->write()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v0

    return-object v0
.end method
