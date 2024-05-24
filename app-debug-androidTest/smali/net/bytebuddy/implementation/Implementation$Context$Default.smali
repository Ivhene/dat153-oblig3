.class public Lnet/bytebuddy/implementation/Implementation$Context$Default;
.super Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;
.source "Implementation.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/bytebuddy/implementation/Implementation$Context;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Default"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lnet/bytebuddy/implementation/Implementation$Context$Default$Factory;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$AccessorMethodDelegation;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetter;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetter;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$AccessorMethod;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$AbstractPropertyAccessorMethod;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;,
        Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;
    }
.end annotation


# static fields
.field public static final ACCESSOR_METHOD_SUFFIX:Ljava/lang/String; = "accessor"

.field public static final FIELD_CACHE_PREFIX:Ljava/lang/String; = "cachedValue"


# instance fields
.field private final auxiliaryClassFileVersion:Lnet/bytebuddy/ClassFileVersion;

.field private final auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

.field private final auxiliaryTypes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;"
        }
    .end annotation
.end field

.field private fieldCacheCanAppendEntries:Z

.field private final registeredAccessorMethods:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredFieldCacheEntries:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredFieldCacheFields:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredGetters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final registeredSetters:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lnet/bytebuddy/description/field/FieldDescription;",
            "Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;",
            ">;"
        }
    .end annotation
.end field

.field private final suffix:Ljava/lang/String;

.field private final typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;


# direct methods
.method protected constructor <init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/ClassFileVersion;)V
    .locals 1
    .param p1, "instrumentedType"    # Lnet/bytebuddy/description/type/TypeDescription;
    .param p2, "classFileVersion"    # Lnet/bytebuddy/ClassFileVersion;
    .param p3, "auxiliaryTypeNamingStrategy"    # Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;
    .param p4, "typeInitializer"    # Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
    .param p5, "auxiliaryClassFileVersion"    # Lnet/bytebuddy/ClassFileVersion;

    .line 828
    invoke-direct {p0, p1, p2}, Lnet/bytebuddy/implementation/Implementation$Context$ExtractableView$AbstractBase;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/ClassFileVersion;)V

    .line 829
    iput-object p3, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    .line 830
    iput-object p4, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    .line 831
    iput-object p5, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->auxiliaryClassFileVersion:Lnet/bytebuddy/ClassFileVersion;

    .line 832
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredAccessorMethods:Ljava/util/Map;

    .line 833
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredGetters:Ljava/util/Map;

    .line 834
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredSetters:Ljava/util/Map;

    .line 835
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->auxiliaryTypes:Ljava/util/Map;

    .line 836
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredFieldCacheEntries:Ljava/util/Map;

    .line 837
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredFieldCacheFields:Ljava/util/Set;

    .line 838
    invoke-static {}, Lnet/bytebuddy/utility/RandomString;->make()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->suffix:Ljava/lang/String;

    .line 839
    const/4 v0, 0x1

    iput-boolean v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->fieldCacheCanAppendEntries:Z

    .line 840
    return-void
.end method


# virtual methods
.method public cache(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    .locals 8
    .param p1, "fieldValue"    # Lnet/bytebuddy/implementation/bytecode/StackManipulation;
    .param p2, "fieldType"    # Lnet/bytebuddy/description/type/TypeDescription;

    .line 908
    new-instance v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;

    invoke-direct {v0, p1, p2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;-><init>(Lnet/bytebuddy/implementation/bytecode/StackManipulation;Lnet/bytebuddy/description/type/TypeDescription;)V

    .line 909
    .local v0, "fieldCacheEntry":Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;
    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredFieldCacheEntries:Ljava/util/Map;

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    .line 910
    .local v1, "fieldCache":Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;
    if-eqz v1, :cond_0

    .line 911
    return-object v1

    .line 913
    :cond_0
    iget-boolean v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->fieldCacheCanAppendEntries:Z

    if-eqz v2, :cond_2

    .line 916
    invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    .line 918
    .local v2, "hashCode":I
    :goto_0
    new-instance v3, Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;

    iget-object v4, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {p2}, Lnet/bytebuddy/description/type/TypeDescription;->asGenericType()Lnet/bytebuddy/description/type/TypeDescription$Generic;

    move-result-object v5

    iget-object v6, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->suffix:Ljava/lang/String;

    add-int/lit8 v7, v2, 0x1

    .end local v2    # "hashCode":I
    .local v7, "hashCode":I
    invoke-direct {v3, v4, v5, v6, v2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$CacheValueField;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Lnet/bytebuddy/description/type/TypeDescription$Generic;Ljava/lang/String;I)V

    move-object v1, v3

    .line 919
    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredFieldCacheFields:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 920
    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredFieldCacheEntries:Ljava/util/Map;

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 921
    return-object v1

    .line 919
    :cond_1
    move v2, v7

    goto :goto_0

    .line 914
    .end local v7    # "hashCode":I
    :cond_2
    new-instance v2, Ljava/lang/IllegalStateException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Cached values cannot be registered after defining the type initializer for "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public drain(Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain;Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V
    .locals 10
    .param p1, "drain"    # Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain;
    .param p2, "classVisitor"    # Lnet/bytebuddy/jar/asm/ClassVisitor;
    .param p3, "annotationValueFilterFactory"    # Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;

    .line 930
    const/4 v0, 0x0

    iput-boolean v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->fieldCacheCanAppendEntries:Z

    .line 931
    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->typeInitializer:Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    .line 932
    .local v0, "typeInitializer":Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;
    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredFieldCacheEntries:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    .line 933
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {v3}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getModifiers()I

    move-result v5

    .line 934
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {v3}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getInternalName()Ljava/lang/String;

    move-result-object v6

    .line 935
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {v3}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getDescriptor()Ljava/lang/String;

    move-result-object v7

    .line 936
    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;

    invoke-interface {v3}, Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;->getGenericSignature()Ljava/lang/String;

    move-result-object v8

    sget-object v9, Lnet/bytebuddy/description/field/FieldDescription;->NO_DEFAULT_VALUE:Ljava/lang/Object;

    .line 933
    move-object v4, p2

    invoke-virtual/range {v4 .. v9}, Lnet/bytebuddy/jar/asm/ClassVisitor;->visitField(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)Lnet/bytebuddy/jar/asm/FieldVisitor;

    move-result-object v3

    .line 938
    .local v3, "fieldVisitor":Lnet/bytebuddy/jar/asm/FieldVisitor;
    if-eqz v3, :cond_0

    .line 939
    invoke-virtual {v3}, Lnet/bytebuddy/jar/asm/FieldVisitor;->visitEnd()V

    .line 940
    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lnet/bytebuddy/description/field/FieldDescription;

    invoke-virtual {v4, v5}, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;->storeIn(Lnet/bytebuddy/description/field/FieldDescription;)Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;

    move-result-object v4

    invoke-interface {v0, v4}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;->expandWith(Lnet/bytebuddy/implementation/bytecode/ByteCodeAppender;)Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;

    move-result-object v0

    .line 942
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldCacheEntry;Lnet/bytebuddy/description/field/FieldDescription$InDefinedShape;>;"
    .end local v3    # "fieldVisitor":Lnet/bytebuddy/jar/asm/FieldVisitor;
    :cond_0
    goto :goto_0

    .line 943
    :cond_1
    invoke-interface {p1, p2, v0, p0}, Lnet/bytebuddy/dynamic/scaffold/TypeInitializer$Drain;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/dynamic/scaffold/TypeInitializer;Lnet/bytebuddy/implementation/Implementation$Context;)V

    .line 944
    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredAccessorMethods:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    .line 945
    .local v2, "record":Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    invoke-interface {v2, p2, p0, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    .line 946
    .end local v2    # "record":Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    goto :goto_1

    .line 947
    :cond_2
    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredGetters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    .line 948
    .restart local v2    # "record":Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    invoke-interface {v2, p2, p0, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    .line 949
    .end local v2    # "record":Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    goto :goto_2

    .line 950
    :cond_3
    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredSetters:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_3
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;

    .line 951
    .restart local v2    # "record":Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    invoke-interface {v2, p2, p0, p3}, Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;->apply(Lnet/bytebuddy/jar/asm/ClassVisitor;Lnet/bytebuddy/implementation/Implementation$Context;Lnet/bytebuddy/implementation/attribute/AnnotationValueFilter$Factory;)V

    .line 952
    .end local v2    # "record":Lnet/bytebuddy/dynamic/scaffold/TypeWriter$MethodPool$Record;
    goto :goto_3

    .line 953
    :cond_4
    return-void
.end method

.method public getAuxiliaryTypes()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lnet/bytebuddy/dynamic/DynamicType;",
            ">;"
        }
    .end annotation

    .line 901
    new-instance v0, Ljava/util/ArrayList;

    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->auxiliaryTypes:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    return-object v0
.end method

.method public isEnabled()Z
    .locals 1

    .line 846
    const/4 v0, 0x1

    return v0
.end method

.method public register(Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;)Lnet/bytebuddy/description/type/TypeDescription;
    .locals 3
    .param p1, "auxiliaryType"    # Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;

    .line 889
    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->auxiliaryTypes:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/dynamic/DynamicType;

    .line 890
    .local v0, "dynamicType":Lnet/bytebuddy/dynamic/DynamicType;
    if-nez v0, :cond_0

    .line 891
    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->auxiliaryTypeNamingStrategy:Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    invoke-interface {v1, v2}, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType$NamingStrategy;->name(Lnet/bytebuddy/description/type/TypeDescription;)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->auxiliaryClassFileVersion:Lnet/bytebuddy/ClassFileVersion;

    invoke-interface {p1, v1, v2, p0}, Lnet/bytebuddy/implementation/auxiliary/AuxiliaryType;->make(Ljava/lang/String;Lnet/bytebuddy/ClassFileVersion;Lnet/bytebuddy/implementation/MethodAccessorFactory;)Lnet/bytebuddy/dynamic/DynamicType;

    move-result-object v0

    .line 892
    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->auxiliaryTypes:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 894
    :cond_0
    invoke-interface {v0}, Lnet/bytebuddy/dynamic/DynamicType;->getTypeDescription()Lnet/bytebuddy/description/type/TypeDescription;

    move-result-object v1

    return-object v1
.end method

.method public registerAccessorFor(Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 4
    .param p1, "specialMethodInvocation"    # Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;
    .param p2, "accessType"    # Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    .line 853
    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredAccessorMethods:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;

    .line 854
    .local v0, "record":Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;
    if-nez v0, :cond_0

    new-instance v1, Lnet/bytebuddy/implementation/Implementation$Context$Default$AccessorMethodDelegation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->suffix:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2, p1}, Lnet/bytebuddy/implementation/Implementation$Context$Default$AccessorMethodDelegation;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;Lnet/bytebuddy/implementation/Implementation$SpecialMethodInvocation;)V

    goto :goto_0

    .line 856
    :cond_0
    invoke-virtual {v0, p2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->with(Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 857
    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredAccessorMethods:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 858
    invoke-virtual {v0}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->getMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v1

    return-object v1
.end method

.method public registerGetterFor(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 4
    .param p1, "fieldDescription"    # Lnet/bytebuddy/description/field/FieldDescription;
    .param p2, "accessType"    # Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    .line 865
    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredGetters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;

    .line 866
    .local v0, "record":Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;
    if-nez v0, :cond_0

    new-instance v1, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->suffix:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2, p1}, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldGetterDelegation;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;Lnet/bytebuddy/description/field/FieldDescription;)V

    goto :goto_0

    .line 868
    :cond_0
    invoke-virtual {v0, p2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->with(Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 869
    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredGetters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 870
    invoke-virtual {v0}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->getMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v1

    return-object v1
.end method

.method public registerSetterFor(Lnet/bytebuddy/description/field/FieldDescription;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;
    .locals 4
    .param p1, "fieldDescription"    # Lnet/bytebuddy/description/field/FieldDescription;
    .param p2, "accessType"    # Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;

    .line 877
    iget-object v0, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredSetters:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;

    .line 878
    .local v0, "record":Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;
    if-nez v0, :cond_0

    new-instance v1, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;

    iget-object v2, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->instrumentedType:Lnet/bytebuddy/description/type/TypeDescription;

    iget-object v3, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->suffix:Ljava/lang/String;

    invoke-direct {v1, v2, v3, p2, p1}, Lnet/bytebuddy/implementation/Implementation$Context$Default$FieldSetterDelegation;-><init>(Lnet/bytebuddy/description/type/TypeDescription;Ljava/lang/String;Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;Lnet/bytebuddy/description/field/FieldDescription;)V

    goto :goto_0

    .line 880
    :cond_0
    invoke-virtual {v0, p2}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->with(Lnet/bytebuddy/implementation/MethodAccessorFactory$AccessType;)Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;

    move-result-object v1

    :goto_0
    move-object v0, v1

    .line 881
    iget-object v1, p0, Lnet/bytebuddy/implementation/Implementation$Context$Default;->registeredSetters:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 882
    invoke-virtual {v0}, Lnet/bytebuddy/implementation/Implementation$Context$Default$DelegationRecord;->getMethod()Lnet/bytebuddy/description/method/MethodDescription$InDefinedShape;

    move-result-object v1

    return-object v1
.end method
