.class public Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;
.super Ljava/lang/Object;
.source "Implementation.java"

# interfaces
.implements Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Context$Default;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FieldCacheEntry"
.end annotation


# instance fields
.field private final fieldType:Lnet/bytebuddy/description/type/TypeDescription;

.field private final fieldValue:Lnet/bytebuddy/implementation/bytecode/StackManipulation;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V
    .locals 0
    .param p1, "fieldValue"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .param p2, "fieldType"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 1049
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1050
    iput-object p1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;->fieldValue:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    .line 1051
    iput-object p2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;->fieldType:Lnet/bytebuddy/description/type/TypeDescription;

    .line 1052
    return-void
.end method


# virtual methods
.method public apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;
    .locals 1
    .param p1, "methodVisitor"    # Lnet/bytebuddy/jar/asm/MethodVisitor;
    .param p2, "implementationContext"    # Lnet/bytebuddy/implementation/Implementation$Context;

    .line 1084
    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;->fieldValue:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0, p1, p2}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->apply(Lnet/bytebuddy/jar/asm/MethodVisitor;Lnet/bytebuddy/implementation/Implementation$Context;)Lnet/bytebuddy/implementation/bytecode/StackManipulation$Size;

    move-result-object v0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 5
    .param p1, "other"    # Ljava/lang/Object;

    .line 1096
    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    .line 1097
    return v0

    .line 1098
    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 1101
    :cond_1
    move-object v2, p1

    check-cast v2, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;

    .line 1102
    .local v2, "fieldCacheEntry":Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;
    iget-object v3, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;->fieldValue:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    iget-object v4, v2, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;->fieldValue:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;->fieldType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v4, v2, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;->fieldType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    .line 1099
    .end local v2    # "fieldCacheEntry":Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;
    :cond_3
    :goto_1
    return v1
.end method

.method protected getFieldType()Lnet/bytebuddy/description/type/TypeDescription;
    .locals 1

    .line 1070
    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;->fieldType:Lnet/bytebuddy/description/type/TypeDescription;

    return-object v0
.end method

.method public hashCode()I
    .locals 3

    .line 1089
    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;->fieldValue:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    .line 1090
    .local v0, "result":I
    mul-int/lit8 v1, v0, 0x1f

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;->fieldType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    add-int/2addr v1, v2

    .line 1091
    .end local v0    # "result":I
    .local v1, "result":I
    return v1
.end method

.method public isValid()Z
    .locals 1

    .line 1077
    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;->fieldValue:Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    invoke-interface {v0}, Lnet/bytebuddy/implementation/bytecode/StackManipulation;->isValid()Z

    move-result v0

    return v0
.end method

.method protected storeIn(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;
    .locals 4
    .param p1, "fieldDescription"    # Lnet/bytebuddy/description/field/FieldDescription;

    .line 1061
    new-instance v0, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;

    const/4 v1, 0x2

    new-array v1, v1, [Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-static {p1}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess;->forField(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;

    move-result-object v2

    invoke-interface {v2}, Lnet/bytebuddy/implementation/bytecode/member/FieldAccess$Defined;->write()Lnet/bytebuddy/implementation/bytecode/StackManipulation;

    move-result-object v2

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender$Simple;-><init>([Lnet/bytebuddy/implementation/bytecode/StackManipulation;)V

    return-object v0
.end method
