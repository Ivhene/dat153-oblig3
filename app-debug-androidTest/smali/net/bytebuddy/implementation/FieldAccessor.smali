.class public abstract Lnet/bytebuddy/implementation/FieldAccessor;
.super Ljava/lang/Object;
.source "FieldAccessor.java"

# interfaces
.implements Lnet/bytebuddy/implementation/Implementation;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/FieldAccessor$ForSetter;,
        Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;,
        Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;,
        Lnet/bytebuddy/implementation/FieldAccessor$AssignerConfigurable;,
        Lnet/bytebuddy/implementation/FieldAccessor$PropertyConfigurable;,
        Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;,
        Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;
    }
.end annotation

.annotation runtime Lnet/bytebuddy/build/HashCodeAndEqualsPlugin$Enhance;
.end annotation


# instance fields
.field protected final assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

.field protected final fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

.field protected final typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;Lnet/bytebuddy/implementation/bytecode/assign/Assigner;Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;)V
    .locals 0
    .param p1, "fieldLocation"    # Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;
    .param p2, "assigner"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner;
    .param p3, "typing"    # Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 86
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    iput-object p1, p0, Lnet/bytebuddy/implementation/FieldAccessor;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    .line 88
    iput-object p2, p0, Lnet/bytebuddy/implementation/FieldAccessor;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    .line 89
    iput-object p3, p0, Lnet/bytebuddy/implementation/FieldAccessor;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    .line 90
    return-void
.end method

.method public static of(Ljava/lang/reflect/Field;)Lnet/bytebuddy/implementation/FieldAccessor$AssignerConfigurable;
    .locals 1
    .param p0, "field"    # Ljava/lang/reflect/Field;

    .line 130
    new-instance v0, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;

    invoke-direct {v0, p0}, Lnet/bytebuddy/description/field/FieldDescription$ForLoadedField;-><init>(Ljava/lang/reflect/Field;)V

    invoke-static {v0}, Lnet/bytebuddy/implementation/FieldAccessor;->of(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/FieldAccessor$AssignerConfigurable;

    move-result-object v0

    return-object v0
.end method

.method public static of(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/FieldAccessor$AssignerConfigurable;
    .locals 2
    .param p0, "fieldDescription"    # Lnet/bytebuddy/description/field/FieldDescription;

    .line 140
    new-instance v0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;

    new-instance v1, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;

    invoke-direct {v1, p0}, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Absolute;-><init>(Lnet/bytebuddy/description/field/FieldDescription;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;)V

    return-object v0
.end method

.method public static of(Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;)Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;
    .locals 2
    .param p0, "fieldNameExtractor"    # Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;

    .line 120
    new-instance v0, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;

    new-instance v1, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;

    invoke-direct {v1, p0}, Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation$Relative;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;)V

    invoke-direct {v0, v1}, Lnet/bytebuddy/implementation/FieldAccessor$ForImplicitProperty;-><init>(Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;)V

    return-object v0
.end method

.method public static ofBeanProperty()Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;
    .locals 1

    .line 110
    sget-object v0, Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor$ForBeanProperty;->INSTANCE:Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor$ForBeanProperty;

    invoke-static {v0}, Lnet/bytebuddy/implementation/FieldAccessor;->of(Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;)Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;

    move-result-object v0

    return-object v0
.end method

.method public static ofField(Ljava/lang/String;)Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .line 99
    new-instance v0, Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor$ForFixedValue;

    invoke-direct {v0, p0}, Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor$ForFixedValue;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lnet/bytebuddy/implementation/FieldAccessor;->of(Lnet/bytebuddy/implementation/FieldAccessor$FieldNameExtractor;)Lnet/bytebuddy/implementation/FieldAccessor$OwnerTypeLocatable;

    move-result-object v0

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
    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    check-cast p1, Lnet/bytebuddy/implementation/FieldAccessor;

    iget-object v3, p1, Lnet/bytebuddy/implementation/FieldAccessor;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v2, v3}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    return v1

    :cond_3
    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    iget-object v3, p1, Lnet/bytebuddy/implementation/FieldAccessor;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    return v1

    :cond_4
    iget-object v2, p0, Lnet/bytebuddy/implementation/FieldAccessor;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    iget-object p1, p1, Lnet/bytebuddy/implementation/FieldAccessor;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v2, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_5

    return v1

    :cond_5
    return v0
.end method

.method public hashCode()I
    .locals 2

    invoke-virtual {p0}, Lnet/bytebuddy/implementation/FieldAccessor;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor;->fieldLocation:Lnet/bytebuddy/implementation/FieldAccessor$FieldLocation;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor;->assigner:Lnet/bytebuddy/implementation/bytecode/assign/Assigner;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Lnet/bytebuddy/implementation/FieldAccessor;->typing:Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;

    invoke-virtual {v1}, Lnet/bytebuddy/implementation/bytecode/assign/Assigner$Typing;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
