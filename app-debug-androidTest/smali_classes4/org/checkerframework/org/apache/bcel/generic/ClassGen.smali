.class public Lorg/checkerframework/org/apache/bcel/generic/ClassGen;
.super Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;
.source "ClassGen.java"

# interfaces
.implements Ljava/lang/Cloneable;


# static fields
.field private static _cmp:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;


# instance fields
.field private final annotation_vec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;",
            ">;"
        }
    .end annotation
.end field

.field private final attribute_vec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/classfile/Attribute;",
            ">;"
        }
    .end annotation
.end field

.field private class_name:Ljava/lang/String;

.field private class_name_index:I

.field private cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

.field private final field_vec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/classfile/Field;",
            ">;"
        }
    .end annotation
.end field

.field private final file_name:Ljava/lang/String;

.field private final interface_vec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private major:I

.field private final method_vec:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/classfile/Method;",
            ">;"
        }
    .end annotation
.end field

.field private minor:I

.field private observers:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lorg/checkerframework/org/apache/bcel/generic/ClassObserver;",
            ">;"
        }
    .end annotation
.end field

.field private super_class_name:Ljava/lang/String;

.field private superclass_name_index:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 68
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen$1;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen$1;-><init>()V

    sput-object v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->_cmp:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;)V
    .locals 7
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "super_class_name"    # Ljava/lang/String;
    .param p3, "file_name"    # Ljava/lang/String;
    .param p4, "access_flags"    # I
    .param p5, "interfaces"    # [Ljava/lang/String;

    .line 129
    new-instance v6, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-direct {v6}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;-><init>()V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-direct/range {v0 .. v6}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I[Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 5
    .param p1, "class_name"    # Ljava/lang/String;
    .param p2, "super_class_name"    # Ljava/lang/String;
    .param p3, "file_name"    # Ljava/lang/String;
    .param p4, "access_flags"    # I
    .param p5, "interfaces"    # [Ljava/lang/String;
    .param p6, "cp"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 98
    invoke-direct {p0, p4}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;-><init>(I)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->class_name_index:I

    .line 57
    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->superclass_name_index:I

    .line 58
    const/16 v0, 0x2d

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->major:I

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->minor:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->field_vec:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->method_vec:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->attribute_vec:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->interface_vec:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->annotation_vec:Ljava/util/List;

    .line 99
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->class_name:Ljava/lang/String;

    .line 100
    iput-object p2, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->super_class_name:Ljava/lang/String;

    .line 101
    iput-object p3, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->file_name:Ljava/lang/String;

    .line 102
    iput-object p6, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 104
    if-eqz p3, :cond_0

    .line 105
    new-instance v0, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;

    const-string v1, "SourceFile"

    invoke-virtual {p6, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p6, p3}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addUtf8(Ljava/lang/String;)I

    move-result v2

    .line 106
    invoke-virtual {p6}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v3

    const/4 v4, 0x2

    invoke-direct {v0, v1, v4, v2, v3}, Lorg/checkerframework/org/apache/bcel/classfile/SourceFile;-><init>(IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    .line 105
    invoke-virtual {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->addAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 108
    :cond_0
    invoke-virtual {p6, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->class_name_index:I

    .line 109
    invoke-virtual {p6, p2}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->superclass_name_index:I

    .line 110
    if-eqz p5, :cond_1

    .line 111
    array-length v0, p5

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v2, p5, v1

    .line 112
    .local v2, "interface1":Ljava/lang/String;
    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->addInterface(Ljava/lang/String;)V

    .line 111
    .end local v2    # "interface1":Ljava/lang/String;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 115
    :cond_1
    return-void
.end method

.method public constructor <init>(Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;)V
    .locals 10
    .param p1, "clazz"    # Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    .line 139
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getAccessFlags()I

    move-result v0

    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;-><init>(I)V

    .line 56
    const/4 v0, -0x1

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->class_name_index:I

    .line 57
    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->superclass_name_index:I

    .line 58
    const/16 v0, 0x2d

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->major:I

    .line 59
    const/4 v0, 0x3

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->minor:I

    .line 62
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->field_vec:Ljava/util/List;

    .line 63
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->method_vec:Ljava/util/List;

    .line 64
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->attribute_vec:Ljava/util/List;

    .line 65
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->interface_vec:Ljava/util/List;

    .line 66
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->annotation_vec:Ljava/util/List;

    .line 140
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassNameIndex()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->class_name_index:I

    .line 141
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassNameIndex()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->superclass_name_index:I

    .line 142
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getClassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->class_name:Ljava/lang/String;

    .line 143
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSuperclassName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->super_class_name:Ljava/lang/String;

    .line 144
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getSourceFileName()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->file_name:Ljava/lang/String;

    .line 145
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v1

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;)V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 146
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMajor()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->major:I

    .line 147
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMinor()I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->minor:I

    .line 148
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v0

    .line 150
    .local v0, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    invoke-direct {p0, v0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->unpackAnnotations([Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    move-result-object v1

    .line 151
    .local v1, "annotations":[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v2

    .line 152
    .local v2, "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    move-result-object v3

    .line 153
    .local v3, "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-virtual {p1}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;->getInterfaceNames()[Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "interfaces":[Ljava/lang/String;
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    if-ge v7, v5, :cond_0

    aget-object v8, v4, v7

    .line 155
    .local v8, "interface1":Ljava/lang/String;
    invoke-virtual {p0, v8}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->addInterface(Ljava/lang/String;)V

    .line 154
    .end local v8    # "interface1":Ljava/lang/String;
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 157
    :cond_0
    array-length v5, v0

    move v7, v6

    :goto_1
    if-ge v7, v5, :cond_2

    aget-object v8, v0, v7

    .line 158
    .local v8, "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v9, v8, Lorg/checkerframework/org/apache/bcel/classfile/Annotations;

    if-nez v9, :cond_1

    .line 159
    invoke-virtual {p0, v8}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->addAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 157
    .end local v8    # "attribute":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 162
    :cond_2
    array-length v5, v1

    move v7, v6

    :goto_2
    if-ge v7, v5, :cond_3

    aget-object v8, v1, v7

    .line 163
    .local v8, "annotation":Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    invoke-virtual {p0, v8}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->addAnnotationEntry(Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;)V

    .line 162
    .end local v8    # "annotation":Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 165
    :cond_3
    array-length v5, v2

    move v7, v6

    :goto_3
    if-ge v7, v5, :cond_4

    aget-object v8, v2, v7

    .line 166
    .local v8, "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    invoke-virtual {p0, v8}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->addMethod(Lorg/checkerframework/org/apache/bcel/classfile/Method;)V

    .line 165
    .end local v8    # "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 168
    :cond_4
    array-length v5, v3

    :goto_4
    if-ge v6, v5, :cond_5

    aget-object v7, v3, v6

    .line 169
    .local v7, "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-virtual {p0, v7}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->addField(Lorg/checkerframework/org/apache/bcel/classfile/Field;)V

    .line 168
    .end local v7    # "field":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 171
    :cond_5
    return-void
.end method

.method public static getComparator()Lorg/checkerframework/org/apache/bcel/util/BCELComparator;
    .locals 1

    .line 579
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->_cmp:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    return-object v0
.end method

.method public static setComparator(Lorg/checkerframework/org/apache/bcel/util/BCELComparator;)V
    .locals 0
    .param p0, "comparator"    # Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    .line 587
    sput-object p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->_cmp:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    .line 588
    return-void
.end method

.method private unpackAnnotations([Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    .locals 12
    .param p1, "attrs"    # [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 178
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 179
    .local v0, "annotationGenObjs":Ljava/util/List;, "Ljava/util/List<Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;>;"
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p1, v3

    .line 180
    .local v4, "attr":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeVisibleAnnotations;

    if-eqz v5, :cond_1

    .line 182
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeVisibleAnnotations;

    .line 183
    .local v5, "rva":Lorg/checkerframework/org/apache/bcel/classfile/RuntimeVisibleAnnotations;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeVisibleAnnotations;->getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-result-object v6

    .line 184
    .local v6, "annos":[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    array-length v7, v6

    move v8, v2

    :goto_1
    if-ge v8, v7, :cond_0

    aget-object v9, v6, v8

    .line 185
    .local v9, "a":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    new-instance v10, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    .line 186
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v11

    invoke-direct {v10, v9, v11, v2}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V

    .line 185
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 184
    .end local v9    # "a":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 188
    .end local v5    # "rva":Lorg/checkerframework/org/apache/bcel/classfile/RuntimeVisibleAnnotations;
    .end local v6    # "annos":[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    :cond_0
    goto :goto_3

    .line 190
    :cond_1
    instance-of v5, v4, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleAnnotations;

    if-eqz v5, :cond_2

    .line 192
    move-object v5, v4

    check-cast v5, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleAnnotations;

    .line 193
    .local v5, "ria":Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleAnnotations;
    invoke-virtual {v5}, Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleAnnotations;->getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;

    move-result-object v6

    .line 194
    .restart local v6    # "annos":[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    array-length v7, v6

    move v8, v2

    :goto_2
    if-ge v8, v7, :cond_2

    aget-object v9, v6, v8

    .line 195
    .restart local v9    # "a":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    new-instance v10, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    .line 196
    invoke-virtual {p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-result-object v11

    invoke-direct {v10, v9, v11, v2}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;-><init>(Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;Z)V

    .line 195
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 194
    .end local v9    # "a":Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 179
    .end local v4    # "attr":Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v5    # "ria":Lorg/checkerframework/org/apache/bcel/classfile/RuntimeInvisibleAnnotations;
    .end local v6    # "annos":[Lorg/checkerframework/org/apache/bcel/classfile/AnnotationEntry;
    :cond_2
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 200
    :cond_3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    return-object v1
.end method


# virtual methods
.method public addAnnotationEntry(Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;)V
    .locals 1
    .param p1, "a"    # Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    .line 286
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->annotation_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 287
    return-void
.end method

.method public addAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V
    .locals 1
    .param p1, "a"    # Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 282
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->attribute_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 283
    return-void
.end method

.method public addEmptyConstructor(I)V
    .locals 11
    .param p1, "access_flags"    # I

    .line 306
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;

    invoke-direct {v0}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;-><init>()V

    .line 307
    .local v0, "il":Lorg/checkerframework/org/apache/bcel/generic/InstructionList;
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->THIS:Lorg/checkerframework/org/apache/bcel/generic/LocalVariableInstruction;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 308
    new-instance v1, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;

    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->super_class_name:Ljava/lang/String;

    const-string v4, "<init>"

    const-string v5, "()V"

    invoke-virtual {v2, v3, v4, v5}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addMethodref(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-direct {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/INVOKESPECIAL;-><init>(I)V

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 309
    sget-object v1, Lorg/checkerframework/org/apache/bcel/generic/InstructionConst;->RETURN:Lorg/checkerframework/org/apache/bcel/generic/ReturnInstruction;

    invoke-virtual {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/InstructionList;->append(Lorg/checkerframework/org/apache/bcel/generic/Instruction;)Lorg/checkerframework/org/apache/bcel/generic/InstructionHandle;

    .line 310
    new-instance v10, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;

    sget-object v3, Lorg/checkerframework/org/apache/bcel/generic/Type;->VOID:Lorg/checkerframework/org/apache/bcel/generic/BasicType;

    sget-object v4, Lorg/checkerframework/org/apache/bcel/generic/Type;->NO_ARGS:[Lorg/checkerframework/org/apache/bcel/generic/Type;

    const/4 v5, 0x0

    const-string v6, "<init>"

    iget-object v7, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->class_name:Ljava/lang/String;

    iget-object v9, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    move-object v1, v10

    move v2, p1

    move-object v8, v0

    invoke-direct/range {v1 .. v9}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;-><init>(ILorg/checkerframework/org/apache/bcel/generic/Type;[Lorg/checkerframework/org/apache/bcel/generic/Type;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/checkerframework/org/apache/bcel/generic/InstructionList;Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V

    .line 312
    .local v1, "mg":Lorg/checkerframework/org/apache/bcel/generic/MethodGen;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->setMaxStack(I)V

    .line 313
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/MethodGen;->getMethod()Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v2

    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->addMethod(Lorg/checkerframework/org/apache/bcel/classfile/Method;)V

    .line 314
    return-void
.end method

.method public addField(Lorg/checkerframework/org/apache/bcel/classfile/Field;)V
    .locals 1
    .param p1, "f"    # Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .line 322
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->field_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    return-void
.end method

.method public addInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 233
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->interface_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 234
    return-void
.end method

.method public addMethod(Lorg/checkerframework/org/apache/bcel/classfile/Method;)V
    .locals 1
    .param p1, "m"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 295
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->method_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 296
    return-void
.end method

.method public addObserver(Lorg/checkerframework/org/apache/bcel/generic/ClassObserver;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ClassObserver;

    .line 536
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->observers:Ljava/util/List;

    if-nez v0, :cond_0

    .line 537
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->observers:Ljava/util/List;

    .line 539
    :cond_0
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->observers:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 540
    return-void
.end method

.method public clone()Ljava/lang/Object;
    .locals 3
    .annotation runtime Lorg/checkerframework/dataflow/qual/SideEffectFree;
    .end annotation

    .line 568
    :try_start_0
    invoke-super {p0}, Ljava/lang/Object;->clone()Ljava/lang/Object;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/CloneNotSupportedException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    .line 569
    :catch_0
    move-exception v0

    .line 570
    .local v0, "e":Ljava/lang/CloneNotSupportedException;
    new-instance v1, Ljava/lang/Error;

    const-string v2, "Clone Not Supported"

    invoke-direct {v1, v2}, Ljava/lang/Error;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public containsField(Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;

    .line 334
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->field_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .line 335
    .local v1, "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/Field;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 336
    return-object v1

    .line 338
    .end local v1    # "f":Lorg/checkerframework/org/apache/bcel/classfile/Field;
    :cond_0
    goto :goto_0

    .line 339
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public containsField(Lorg/checkerframework/org/apache/bcel/classfile/Field;)Z
    .locals 1
    .param p1, "f"    # Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .line 327
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->field_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public containsMethod(Ljava/lang/String;Ljava/lang/String;)Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .locals 3
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "signature"    # Ljava/lang/String;

    .line 346
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->method_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 347
    .local v1, "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/classfile/Method;->getSignature()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 348
    return-object v1

    .line 350
    .end local v1    # "m":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    :cond_0
    goto :goto_0

    .line 351
    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1
    .param p1, "obj"    # Ljava/lang/Object;
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 600
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->_cmp:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    invoke-interface {v0, p0, p1}, Lorg/checkerframework/org/apache/bcel/util/BCELComparator;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;
    .locals 2

    .line 493
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->annotation_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    return-object v0
.end method

.method public getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .locals 2

    .line 488
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->attribute_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    return-object v0
.end method

.method public getClassName()Ljava/lang/String;
    .locals 1

    .line 415
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->class_name:Ljava/lang/String;

    return-object v0
.end method

.method public getClassNameIndex()I
    .locals 1

    .line 527
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->class_name_index:I

    return v0
.end method

.method public getConstantPool()Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;
    .locals 1

    .line 498
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    return-object v0
.end method

.method public getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .locals 2

    .line 483
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->field_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/Field;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/bcel/classfile/Field;

    return-object v0
.end method

.method public getFileName()Ljava/lang/String;
    .locals 1

    .line 425
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->file_name:Ljava/lang/String;

    return-object v0
.end method

.method public getInterfaceNames()[Ljava/lang/String;
    .locals 3

    .line 465
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->interface_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 466
    .local v0, "size":I
    new-array v1, v0, [Ljava/lang/String;

    .line 467
    .local v1, "interfaces":[Ljava/lang/String;
    iget-object v2, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->interface_vec:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 468
    return-object v1
.end method

.method public getInterfaces()[I
    .locals 5

    .line 473
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->interface_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 474
    .local v0, "size":I
    new-array v1, v0, [I

    .line 475
    .local v1, "interfaces":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v0, :cond_0

    .line 476
    iget-object v3, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    iget-object v4, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->interface_vec:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v3

    aput v3, v1, v2

    .line 475
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 478
    .end local v2    # "i":I
    :cond_0
    return-object v1
.end method

.method public getJavaClass()Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;
    .locals 19

    .line 208
    move-object/from16 v0, p0

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->getInterfaces()[I

    move-result-object v13

    .line 209
    .local v13, "interfaces":[I
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->getFields()[Lorg/checkerframework/org/apache/bcel/classfile/Field;

    move-result-object v14

    .line 210
    .local v14, "fields":[Lorg/checkerframework/org/apache/bcel/classfile/Field;
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;

    move-result-object v15

    .line 211
    .local v15, "methods":[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    const/4 v1, 0x0

    .line 212
    .local v1, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    iget-object v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->annotation_vec:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 213
    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->getAttributes()[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v1

    move-object/from16 v16, v1

    goto :goto_0

    .line 216
    :cond_0
    iget-object v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->getAnnotationEntries()[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;

    move-result-object v3

    invoke-static {v2, v3}, Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;->getAnnotationAttributes(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;[Lorg/checkerframework/org/apache/bcel/generic/AnnotationEntryGen;)[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    move-result-object v2

    .line 217
    .local v2, "annAttributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->attribute_vec:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    array-length v4, v2

    add-int/2addr v3, v4

    new-array v1, v3, [Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 218
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->attribute_vec:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 219
    iget-object v3, v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->attribute_vec:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    array-length v4, v2

    const/4 v5, 0x0

    invoke-static {v2, v5, v1, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    move-object/from16 v16, v1

    .line 222
    .end local v1    # "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .end local v2    # "annAttributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    .local v16, "attributes":[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;
    :goto_0
    iget-object v1, v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getFinalConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v17

    .line 223
    .local v17, "_cp":Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;
    new-instance v18, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;

    iget v2, v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->class_name_index:I

    iget v3, v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->superclass_name_index:I

    iget-object v4, v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->file_name:Ljava/lang/String;

    iget v5, v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->major:I

    iget v6, v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->minor:I

    .line 224
    invoke-super/range {p0 .. p0}, Lorg/checkerframework/org/apache/bcel/classfile/AccessFlags;->getAccessFlags()I

    move-result v7

    move-object/from16 v1, v18

    move-object/from16 v8, v17

    move-object v9, v13

    move-object v10, v14

    move-object v11, v15

    move-object/from16 v12, v16

    invoke-direct/range {v1 .. v12}, Lorg/checkerframework/org/apache/bcel/classfile/JavaClass;-><init>(IILjava/lang/String;IIILorg/checkerframework/org/apache/bcel/classfile/ConstantPool;[I[Lorg/checkerframework/org/apache/bcel/classfile/Field;[Lorg/checkerframework/org/apache/bcel/classfile/Method;[Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V

    .line 223
    return-object v18
.end method

.method public getMajor()I
    .locals 1

    .line 250
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->major:I

    return v0
.end method

.method public getMethodAt(I)Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .locals 1
    .param p1, "pos"    # I

    .line 460
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->method_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/checkerframework/org/apache/bcel/classfile/Method;

    return-object v0
.end method

.method public getMethods()[Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .locals 2

    .line 442
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->method_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    new-array v1, v1, [Lorg/checkerframework/org/apache/bcel/classfile/Method;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lorg/checkerframework/org/apache/bcel/classfile/Method;

    return-object v0
.end method

.method public getMinor()I
    .locals 1

    .line 273
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->minor:I

    return v0
.end method

.method public getSuperclassName()Ljava/lang/String;
    .locals 1

    .line 420
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->super_class_name:Ljava/lang/String;

    return-object v0
.end method

.method public getSuperclassNameIndex()I
    .locals 1

    .line 522
    iget v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->superclass_name_index:I

    return v0
.end method

.method public hashCode()I
    .locals 1
    .annotation runtime Lorg/checkerframework/dataflow/qual/Pure;
    .end annotation

    .line 612
    sget-object v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->_cmp:Lorg/checkerframework/org/apache/bcel/util/BCELComparator;

    invoke-interface {v0, p0}, Lorg/checkerframework/org/apache/bcel/util/BCELComparator;->hashCode(Ljava/lang/Object;)I

    move-result v0

    return v0
.end method

.method public removeAttribute(Lorg/checkerframework/org/apache/bcel/classfile/Attribute;)V
    .locals 1
    .param p1, "a"    # Lorg/checkerframework/org/apache/bcel/classfile/Attribute;

    .line 360
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->attribute_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 361
    return-void
.end method

.method public removeField(Lorg/checkerframework/org/apache/bcel/classfile/Field;)V
    .locals 1
    .param p1, "f"    # Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .line 410
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->field_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 411
    return-void
.end method

.method public removeInterface(Ljava/lang/String;)V
    .locals 1
    .param p1, "name"    # Ljava/lang/String;

    .line 242
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->interface_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 243
    return-void
.end method

.method public removeMethod(Lorg/checkerframework/org/apache/bcel/classfile/Method;)V
    .locals 1
    .param p1, "m"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 369
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->method_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 370
    return-void
.end method

.method public removeObserver(Lorg/checkerframework/org/apache/bcel/generic/ClassObserver;)V
    .locals 1
    .param p1, "o"    # Lorg/checkerframework/org/apache/bcel/generic/ClassObserver;

    .line 546
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->observers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 547
    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    .line 549
    :cond_0
    return-void
.end method

.method public replaceField(Lorg/checkerframework/org/apache/bcel/classfile/Field;Lorg/checkerframework/org/apache/bcel/classfile/Field;)V
    .locals 2
    .param p1, "old"    # Lorg/checkerframework/org/apache/bcel/classfile/Field;
    .param p2, "new_"    # Lorg/checkerframework/org/apache/bcel/classfile/Field;

    .line 393
    if-eqz p2, :cond_1

    .line 396
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->field_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 397
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 398
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->field_vec:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 400
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->field_vec:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 402
    :goto_0
    return-void

    .line 394
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    const-string v1, "Replacement method must not be null"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public replaceMethod(Lorg/checkerframework/org/apache/bcel/classfile/Method;Lorg/checkerframework/org/apache/bcel/classfile/Method;)V
    .locals 2
    .param p1, "old"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .param p2, "new_"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 377
    if-eqz p2, :cond_1

    .line 380
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->method_vec:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v0

    .line 381
    .local v0, "i":I
    if-gez v0, :cond_0

    .line 382
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->method_vec:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 384
    :cond_0
    iget-object v1, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->method_vec:Ljava/util/List;

    invoke-interface {v1, v0, p2}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 386
    :goto_0
    return-void

    .line 378
    .end local v0    # "i":I
    :cond_1
    new-instance v0, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;

    const-string v1, "Replacement method must not be null"

    invoke-direct {v0, v1}, Lorg/checkerframework/org/apache/bcel/generic/ClassGenException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public setClassName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 430
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->class_name:Ljava/lang/String;

    .line 431
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->class_name_index:I

    .line 432
    return-void
.end method

.method public setClassNameIndex(I)V
    .locals 3
    .param p1, "class_name_index"    # I

    .line 508
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->class_name_index:I

    .line 509
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v0

    .line 510
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->class_name:Ljava/lang/String;

    .line 511
    return-void
.end method

.method public setConstantPool(Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;)V
    .locals 0
    .param p1, "constant_pool"    # Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 503
    iput-object p1, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    .line 504
    return-void
.end method

.method public setMajor(I)V
    .locals 0
    .param p1, "major"    # I

    .line 258
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->major:I

    .line 259
    return-void
.end method

.method public setMethodAt(Lorg/checkerframework/org/apache/bcel/classfile/Method;I)V
    .locals 1
    .param p1, "method"    # Lorg/checkerframework/org/apache/bcel/classfile/Method;
    .param p2, "pos"    # I

    .line 455
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->method_vec:Ljava/util/List;

    invoke-interface {v0, p2, p1}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 456
    return-void
.end method

.method public setMethods([Lorg/checkerframework/org/apache/bcel/classfile/Method;)V
    .locals 3
    .param p1, "methods"    # [Lorg/checkerframework/org/apache/bcel/classfile/Method;

    .line 447
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->method_vec:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 448
    array-length v0, p1

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v0, :cond_0

    aget-object v2, p1, v1

    .line 449
    .local v2, "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    invoke-virtual {p0, v2}, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->addMethod(Lorg/checkerframework/org/apache/bcel/classfile/Method;)V

    .line 448
    .end local v2    # "method":Lorg/checkerframework/org/apache/bcel/classfile/Method;
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 451
    :cond_0
    return-void
.end method

.method public setMinor(I)V
    .locals 0
    .param p1, "minor"    # I

    .line 266
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->minor:I

    .line 267
    return-void
.end method

.method public setSuperclassName(Ljava/lang/String;)V
    .locals 2
    .param p1, "name"    # Ljava/lang/String;

    .line 436
    const/16 v0, 0x2f

    const/16 v1, 0x2e

    invoke-virtual {p1, v0, v1}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->super_class_name:Ljava/lang/String;

    .line 437
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v0, p1}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->addClass(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->superclass_name_index:I

    .line 438
    return-void
.end method

.method public setSuperclassNameIndex(I)V
    .locals 3
    .param p1, "superclass_name_index"    # I

    .line 515
    iput p1, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->superclass_name_index:I

    .line 516
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->cp:Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;

    invoke-virtual {v0}, Lorg/checkerframework/org/apache/bcel/generic/ConstantPoolGen;->getConstantPool()Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;

    move-result-object v0

    const/4 v1, 0x7

    invoke-virtual {v0, p1, v1}, Lorg/checkerframework/org/apache/bcel/classfile/ConstantPool;->getConstantString(IB)Ljava/lang/String;

    move-result-object v0

    .line 517
    const/16 v1, 0x2f

    const/16 v2, 0x2e

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replace(CC)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->super_class_name:Ljava/lang/String;

    .line 518
    return-void
.end method

.method public update()V
    .locals 2

    .line 557
    iget-object v0, p0, Lorg/checkerframework/org/apache/bcel/generic/ClassGen;->observers:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 558
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/checkerframework/org/apache/bcel/generic/ClassObserver;

    .line 559
    .local v1, "observer":Lorg/checkerframework/org/apache/bcel/generic/ClassObserver;
    invoke-interface {v1, p0}, Lorg/checkerframework/org/apache/bcel/generic/ClassObserver;->notify(Lorg/checkerframework/org/apache/bcel/generic/ClassGen;)V

    .line 560
    .end local v1    # "observer":Lorg/checkerframework/org/apache/bcel/generic/ClassObserver;
    goto :goto_0

    .line 562
    :cond_0
    return-void
.end method
